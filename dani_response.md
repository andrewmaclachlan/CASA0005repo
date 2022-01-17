Response to @darribas's comments. Thanks again to both reviewers for their useful insight. Let me know if any further clarification is needed.

### General checks
- [ ]  Version: Does the release version given match the repository release (2.0)?
- I did create the version myself which probably wasn't the best word to use. Version implies software to me, but i wanted to show and document how the content has been developed over the years. To rectify this i've added an updates section to the paper and README which reflects my intention for doing it in the manner I have. I've also changed the version section on the bookdown website to Updates. I could create the "release" area in GitHub if you think that would be better. I'd like to maintain having a repo and bookdown website for each year though as it's useful for me to look back on. 

### Documentation
- I considered editing the statement of need and including it in the welcome section on the index but i felt it didn't read well, so I've included the whole statement of need.
- Installing packages, the software installation section was actually written for when we used to use the computer cluster rooms. On the software installation I've added a lot more information about troubleshooting package issues (my process at least) and some reference links. Adam and i both use Windows machines the Mac sections are there for reference but usually there is some slight variation on the problem each year. A while ago i did manage to build the book with Travis and then GitHub actions (using multiple operating systems) but it caused more hassle that I've since spent developing the material. I'll keep a better log of how we resolve Mac issues going forward. 
- The binder instance was more of test of concept for me, however, i see your point so have removed it. Instead there is an renv snapshot which holds all the package information in and instructions to load it in: https://andrewmaclachlan.github.io/CASA0005repo/external-usage.html#how-to-adopt-this-course. We cover renv in week 4 content. 
- [ ] Installation instructions: Is there a clearly stated list of dependencies?
- There is a list of packages used on the bookdown website and also now the renv snapshot. 
- [ ] Community guidelines: Are there clear guidelines for third parties wishing to 1) Contribute to the module 2) Report issues or problems with the module 3) Seek support
- Yes, this was also picked up by Tomas. I've added a section on how to contribute following your suggestion. The README links to this section too: https://andrewmaclachlan.github.io/CASA0005repo/external-usage.html#how-to-contribute

### Pedagogy / Instructional design
- Tomas also commented about guidance for taking the materials and using them. I've added a section called how to adopt this course in the bookdown website. The README also links to this for students and for instructors. 