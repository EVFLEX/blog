---
title: "RStudio with Jekyll"
author: "Auke Hoekstra"
date: "29 juli 2015"
output: html_document
---

**I like to work with markdown in R Studio. Its an excellent environment to create documents containing everything from pictures, graphs and citations to mathematical formula's and live code.** 

**Here I describe how I push my work to the web with the help of the excellent knitr package of Yihui Xie and the Jekyll static page engine on Github.**

# 



[Yihui explains that he developed knitr to do his homework more efficiently and encourages people start with graphics and to use Github](http://www.dailymotion.com/video/x2wyvgq_yihui-xie-interview-by-datascience-la-at-user-2014_tech)

# Server Jekyll locally with R

# Compile and view posts automatically

# Push posts to gh-pages and let Github generate the result


**build.R** contains the code surrounding the knitr::render command. Seems I can also specify the picture directory so I can easily put them in 'dropbox\public' and I don't have to specify the path in the link.

