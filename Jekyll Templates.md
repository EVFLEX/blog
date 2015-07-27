---
title: "Jekyll Templates"
author: "Auke Hoekstra"
date: "27 juli 2015"
output: html_document
---

**Jekyll is supposed to be simple so I decided to take apart a template I liked so I could rebuild it.**

### Jekyll in a few words
First I had to find out what I was dealing with and I found [Jekyllbootstrap.com](http://themes.jekyllbootstrap.com/preview/twitter/lessons/2011/12/29/jekyll-introduction/) illuminating.

> Jekyll is a parsing engine that turns markdown files into static html pages. 

This offers simplicity (no databases etc.) and security (nothing to exploit). I like writing in markdown, especially because I can include R code (document and code are one) and I can output directly to HTML, PDF and Word.

### Pushing Jekyll content in a nutshell
Jekyll works with a git repo. First I commit stuff to this repo. When I am satisfied I commit it to a special git branch called gh-pages. The Jekyll server discovers all stuff in this branche and parses the .md files into webpages that I can view locally. When I'm satisfied I push to my remote gh-pages branch on Github and they will show up on my site evflex.org.

### Directory structure inside the repo

  * _config.yml: stores configuration data.

  * _includes: this folder is for partial views.

  * _layouts: this folder is for the main templates your content will be inserted into. You can have different layouts for different pages or page sections.

  * _posts: this folder contains your dynamic content/posts. the naming format is required to be YYYY-MM-DD-your-blogpost-url-name.md
  
  * _site: this is where the generated site will be placed once Jekyll is done transforming it.

  * assets: this folder is not part of the standard jekyll structure. The assets folder represents any generic folder you happen to create in your root directory. Directories and files not properly formatted for jekyll will be left untouched for you to serve normally.



