---
title: 'An Applied Geographic Information Systems and Science Course in R'
tags:
- Spatial data science
- Smart cities
- rstats
authors:
- name: Andrew MacLachlan
  orcid: 0000-0003-0356-1623
  affiliation: "1"
- name: Adam Dennett
  orcid: 0000-0001-8036-0185
  affiliation: "1"
affiliations:
- name: The Bartlett Centre for Advanced Spatial Analysis, University College London
  index: 1
date: 05 May 2020
bibliography: paper.bib
---
# Updates

The content discussed within this paper refers to the module created for the academic year 2020-2021: https://andrewmaclachlan.github.io/CASA0005repo_20202021/. At the conclusion of each year content is copied to a new repository ending with the academic year it was taught, whilst the content applicable to the current academic year remains on the primary repository: https://github.com/andrewmaclachlan/CASA0005repo. 
This allows the authors and external users to track the development of the content. 

# Summary

This paper presents a masters level geographic information systems and science course (CASA0005) developed by the Bartlett Centre for Advanced Spatial Analysis (CASA), University College London (UCL). CASA0005 is a compulsory module for both MSc programs within the department, running annually in the autumn term with between 100 and 150 enrolled students. During the summer of 2019 the module was transformed from static practicals with some legacy content related to commercial software to an online interactive book primarily for the open source R data science programming language written using the Bookdown package [@Xie2016].

## Resource story

The geographic information systems and science course (CASA0005) is a core module on the CASA MSc and MRes programmes. Originally conceived primarily using ESRI's ArcMap with some Quantum GIS (QGIS), in recent years, consecutive module leaders and module staff, namely the authors of this paper, have transitioned and developed the content to R, with some QGIS. This reflects feedback from alumni, academia and industry that value programmatic and importantly reproducible GIS analysis. The course is representative of the expertise of the module staff with point pattern originating from Adam Dennett, raster analysis from Andrew MacLachlan and geographical regression a collaboration between the two.   

# Statement of need

The buzzword ‘Big data’ and associated roles of data scientists have become common additions to academia, industry and government organisations seeking to optimise workflows and base decisions on factual evidence [@Donoho2017; @Li2016]. In response, the demand for data scientists has significantly grown, with two major recruitment websites LinkedIn and Glassdoor reporting a respective 56% and 44% year on year increase in advertised roles along with classification as the most promising career based on salary, growth, promotion opportunities and satisfaction within the USA in 2019 [@Glassdoor2020; @Pattabiraman2019]. In a similar theme data from the UK’s Universities and Colleges Admissions Service (UCAS) shows that the number of postgraduate level data science courses within the UK has grown from 104 across 51 institutions to 195 across 85 institutions between the academic years commencing in 2019 and 2020 [@TheUniversitiesandCollegesAdmissionsService2020]
. However, for the ability to use data to it’s full capability the spatial aspect is an essential component, yet the majority of current academic resources provide limited coverage of advanced, applied and reproducible geospatial methodologies using unfiltered and real world data examples [@Arribas-Bel2019]

Whilst materials such as the R for Data Science book provide a foundational and essential resource for learning the R data science programming language, consideration of spatial data is extremely limited [@Grolemund2017]. The welcome addition of Geocomputation with R specifically addressed this resource gap, but often used basic examples that are unrepresentative of the complex spatial data wrangling, transformation and manipulation skills required by masters level graduates [@Lovelace2019]. Consequently, this paper presents an academic teaching resource using applied real world government (e.g. [@Cosh2020]) and academic examples (e.g. [@Guha2018]) manipulating complex and large datasets in creating reproducible and actionable outputs, being made possible through delivery as a taught masters level module. 

# Learning objectives

Learning objectives are provided at the start of each individual practical that combine to achieve the overall module learning objectives.

After having taking this module, students should be able to:

* Develop a working knowledge of QGIS and R to support the application of GI Science techniques
* Visualise geographic information through producing appropriate maps to high cartographic standards
* Carry out spatial data management tasks (joining attribute to geometry data, cleaning data, converting between file formats and spatial reference systems)
* Interpret data and apply relevant spatial analyses (e.g. auto correlation/hot spot analysis, areal interpolation, point in polygon/buffer analysis, spatial statistical analysis) to answer a variety of spatial problems
* Explain and evaluate common issues with geographic data such as representation and uncertainty
* Apply and critique (spatial) statistical analysis techniques to infer relationships between spatial phenomena
* Experience the diversity of the global spatial data landscape and evaluate the relative drawbacks and merits of different spatial datasets

# Content

The course can be accessed through the GitHub pages website https://andrewmaclachlan.github.io/CASA0005repo/. The content is equally divided into two main parts:

* Part 1 entitled GIS tools (practicals 1-5) focuses on demonstrating the main spatial software, toolsets and skills that the students will require throughout the: module, MSc programme and in future spatial data science careers. These sessions involve spatial data loading and manipulation to produce descriptive statistics alongside cartographically sound mapped outputs in a reproducible manner. 

* Part 2 entitled GIS analysis (practicals 6-9) builds upon the foundations established during the previous 5 sessions that form part 1, with the focus moving to analysing spatial data in response to proposed research questions, demonstrating types of analysis expected for the assessment of the course. Methods taught in this section include: spatial pattern analysis [@Ester1996], remotely sensed raster data processing [@Artis1982], bootstrapped, linear and geographically weighted regression [@Brunsdon1996; @Efron1988]. The final practical concludes both part 2 and the course through exploring: advanced programming techniques, interactive mapping, further regression methods and cross validation.

Whilst practicals build upon concepts taught in previous weeks each could be used as a stand alone tutorial.

# Instructional design

The module runs over 11 weeks, composed of two 5 week teaching periods separated by with a University wide reading week. It forms 15 of the 120 credits required for the completion of the MSc with an expected total student workload of 150 hours. The course assumes no prior knowledge and attracts a wide variety of students from across the University. It is designed to introduce key weekly theoretical concepts within an interactive 1 hour lecture followed by an associated practical from the bookdown workbook 24 hours later. During this gap between the lecture and practical session students are encouraged to independently work through the self-guided material, with the practical sessions being used to solve problems and discuss previously taught concepts, often in a collaborative manner, following the flipped classroom pedagogical approach [@Tucker2012]. These practical sessions are run by two academic staff members who are supported by between four and five postgraduate teaching assistants. Throughout all delivered sessions students are encouraged to post questions (anonymously if needed) to a slack channel monitored by the module academic team and engage with any ensuing in-class or virtual discussion. 

Students transition from basic geo-spatial tools in part 1 to analysis focused practicals in part 2 that demonstrate methodological approaches used to solve recent policy and academic challenges. The shift from subject-based to problem-based learning in part 2 of the course is designed to develop independence and critical thinking. Whilst the ‘problem-first’ rule of problem-based learning is adhered to, the exact format of the part 2 practicals differs slightly from full traditional definition, as the material guides students to a potential answer [@Kwan2009]. This is in order to showcase methodological approaches available whilst stimulating ideas to solve similar research questions in preparation for their final enquiry-based learning assessment task. Within the assessment task students are required to develop and answer a pertinent or topical geo-spatial question/hypothesis/issue in a logical, scientific and reproducible manner [@Kahn2005]. 
The progression though the module in this manner follows UCL’s current connected curriculum framework (also UCL’s educational framework) that aims to deliver a research based education. Specifically, the enquiry based learning (that includes problem-based learning) aspects of this module align with expanding student research activity (point 2) and connecting academic learning to a workplace environment (point 4) [@Fung2007]. The applied skills acquired from this course in the first term of the MSc set a foundation for the remaining two terms and future careers in spatial data science.

# Experience of use 

The practical materials have been developed over several years with regular updates and revisions added before each annual delivery of the course to capture emerging or current trends in spatial analysis and responding to student feedback from previous years. Having the complete course materials in one searchable online and interactive book has been welcomed by the majority of students. In addition, owing to the logical bookdown project format any issues with the taught concepts or code raised by the students can be easily and quickly resolved and the online book updated, improving student satisfaction. 

As it is also possible to deliver each practical as a standalone tutorial parts have been included in workshop events and summer schools such as the CASA doctoral summer school for advanced spatial modelling.

# References