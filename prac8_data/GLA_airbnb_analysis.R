# Script to import and process historic listings data from Inside Airbnb
# First, load the packages we'll be using
library(tidyverse) # for general wrangling
library(fs) # for creating a list of csv files
library(lubridate) # for working with dates
library(geofacet) # for geofaceted ggplots
library(ggthemes) # can't remember if this is actually needed ...
library(viridis) # may not be needed either
library(extrafont) # for loading the GLA-specific font (see ggplot code below). Not needed if using standard fonts.
# loadfonts(device="win") # Uncomment if loading extra fonts 

# Ideally this would download the files from http://insideairbnb.com/get-the-data.html into a working directory 
# But in this case they've already been downloaded so we'll just specify that directory
setwd("Q:\\Private rented sector\\Short Term Lets\\Research & reports\\Airbnb internal research\\Data\\Inside Airbnb data\\")
files <- dir_ls(glob = "*.csv") # list of files
df <- map_dfr(files, read_csv, .id = "source") 
df$date <- ymd(str_sub(df$source, start = 1, end = 10)) # create a date variable from the source file name
df$source <- NULL # drop the file name column

# Parse variable for date of last review
df$date_last_review <- ymd(df$last_review)

# Calculate gap in days between date of data extract and last review
df <- df %>% 
  mutate(gap = time_length(as.period(interval(date_last_review, date), unit = "day"), unit = "days"))

# Create flag for whether there has been a review in the last 365 days.
df <- df %>%
  mutate(review_in_last_year = case_when(
    gap < 365 ~ "Yes",
    TRUE ~ "No"
  ))

# Very rough map
df %>%
  group_by(date, review_in_last_year) %>%
  tally() %>%
  ggplot(aes(x = date, y = n, fill = review_in_last_year)) +
  geom_area()

# Create a summary table of listings by date, room type and borough
summary <- df %>%
  group_by(date, room_type, neighbourhood) %>%
  tally()

### Facet plot to show trend by borough -----
# shorten some of the borough names
london_boroughs_grid <- london_boroughs_grid %>%
  mutate(short_name = case_when(
    name == "City of London" ~ "City",
    name == "Barking and Dagenham" ~ "B&D",
    name == "Hammersmith and Fulham" ~ "H&F",
    name == "Kensington and Chelsea" ~ "K&C",
    name == "Kingston upon Thames" ~ "Kingston",
    name == "Richmond upon Thames" ~ "Richmond",
    TRUE ~ name
  ))

summary <- left_join(summary, london_boroughs_grid[4:5], by = c("neighbourhood" = "name"))

# Basic plot of the trend in each borough
p <- summary %>%
#  filter(review_in_last_year == "Yes") %>%
  ggplot(aes(x = date, y = n, fill = room_type)) +
  geom_area() +
  facet_geo(~neighbourhood, grid="london_boroughs_grid", label = "short_name") 

# polished version.
p +
  scale_x_date(date_breaks = "2 year", date_labels = "%Y") +
  scale_y_continuous(labels = scales::comma) +
  scale_fill_ptol(name = NULL,
                       labels = c("Entire home", "Private room", "Shared room")) +
  labs(title = "Airbnb listings in London boroughs, April 2015 to May 2019",
       x = NULL,
       y= NULL) +
  theme(text=element_text(family="Foundry Form Sans", size = 11), # NB this is a GLA-specific font
        plot.title = element_text(face = "bold", size=12, hjust=0.5, margin=margin(t=8,b=8)),
        axis.title.x = element_text(face = "bold", colour="black",size=11, margin=margin(t=8)),
        strip.text.x = element_text(margin=margin(0.1,0,0.1,0,"cm")),
        strip.background = element_rect(fill="Gray90"),
        axis.text.x = element_text(colour="black"),
        axis.text.y = element_text(colour="black"),
        axis.ticks = element_line(colour="Gray60"),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.x = element_blank(),
        panel.grid.minor.y = element_blank(),
        panel.grid.major.y = element_line(colour="Gray80"),
        panel.background = element_rect(fill="Gray95"))

ggsave(filename = "listings_borough_trend.png", dpi = 300, type = "cairo",
       width = 22.6, height = 16, units = "cm")
