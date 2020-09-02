FROM rocker/binder:3.6.0
LABEL maintainer='Andy MacLachlan'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}



RUN wget https://github.com/andrewmaclachlan/CASA0005repo/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2020-03-27/')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0
