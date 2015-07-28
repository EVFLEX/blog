---
layout: post
title: "Jekyll Themes"
author: "Auke Hoekstra"
date: 2015-07-28
thumb: ../pics/yellow_electric_car_charger.jpg
categories: development work
tags: home work office coding design
---

# R markdown for reproducible science
Ideally the reader of a scientific article is able to reproduce the experiment based on the contents of the article. With R the writer can come a long way because R itself is freely available and the instructions are compact enough to include in documents.

This creates certain demands:

  * Source should be easy to read and write
  * Source can mix:
    * Text meant for humans
    * Pictures, graphs and links
    * Computer code that is executed on compile
    * Computer code that is displayed to humans
    * Mathematical formula's displayed to humans
  * Source can directly compile to both web and print

R markdown tries to fulfull those demands. It is easy to read and write. Using packages like knitr it can be compiled to web documents (HTML), print (PDF) and - if need be - Word. Computer code can be shown and executed within the document, either as short command "inline"" or complete "code chunk". For mathematical formula's we can insert Latex, both inline and in separate chunks.

# Visualising science
Before we choose a theme we should learn from the past. How have others visualised science?

## Tufte
In data analysis the most famous author is probably Edward Tufte who is often treated as the high priest of data visualisation.

> ***"Above all else show the data"***  
> [Edward Tufte](https://bianalystblog.wordpress.com/2013/04/06/above-all-else-show-the-data-edward-tufte/)

His "Rules" are beautifully illustrated interactively [here](http://www.sealthreinhold.com/school/tuftes-rules/) but in short:

  1. Show Your Data
  2. Use Graphics: “Only a picture can carry such a volume of data in such as small space.”
  3. Avoid Chartjunk: "Chartjunk can turn bores into disasters, but it can never rescue a thin data set.”
  4. Utilize Data-ink.
  5. Use Labels.
  6. Utilize Micro/Macro: "To clarify, add detail."
  7. Separate Layers: “What matters—inevitably, unrelentingly—is the proper relationship among information layers.”
  8. Utilize Multiples: “Constancy of design puts the emphasis on changes in data, not changes in data frames.”
  9. Utilize Color: but “Above all, do no harm.”
  10. Understand Narrative.

## The Latex community
The Latex community is known for its eye for detail when it comes to typesetting and visualising data. This [stackexchange discussion](http://tex.stackexchange.com/questions/1319/showcase-of-beautiful-typography-done-in-tex-friends) is a nice examlple. Here there is also mention of Motion Mountain: "Wonder and Thrill on Every Page". You can download all six beautiful volumes for free at [motionmountain.net](http://www.motionmountain.net/).

If we dive into [Latex templates for yournals](https://www.sharelatex.com/templates/journals) what is clear in my mind how *boring* and *distancing* all the typesetting is. Tufte encourages us to bring ourselves and our readers as close as possible to the data. We really have to get a feel for the data. This means leaving out rectangles [like around this sinus](https://www.sharelatex.com/templates/52fb896f33621a613683ec93/v/2/pdf?inline=true&name=MNRAS%20%28Oxford%20University%20Press%29), especially when combined with [garish colors](https://www.sharelatex.com/templates/52fb87dd33621a613683ec84/v/1/pdf?inline=true&name=ICML). Using [simple pictures](https://www.sharelatex.com/templates/52fe01e834a287a85245b4cf/v/1/pdf?inline=true&name=VLDB%20Paper) can bring topics to life or [tell the entire story](https://www.sharelatex.com/templates/537363fe196e12e838a758ce/v/1/pdf?inline=true&name=British%20Machine%20Vision%20Conference%20%28BMVC%29%20Extended%20Abstract). What triggered me most is how [this journal](https://www.sharelatex.com/templates/52fb8e0b33621a613683ecba/v/1/pdf?inline=true&name=Central%20European%20Journal%20of%20Mathematics) profits visually from using just one support color. I wonder why - in this modern age - this is not standard practice for journals, especially ones where colour images are permitted anyway.

All in all and for all its worship of Edward Tufte the Latex community seems to treat the data with a stiff upper lip instead of with the passion and love that Tufte teaches.

## One page theming
Once we decide we are better off with one column the question become how to make such a long column a good experience for the reader. Maybe we can learn something from the templates for one page websites. The harvest is meagre but here are some impressions.

Scrolling over a background image that seems to move at a different speed is all the rage. It it highly noticable and can give you an almost visceral perception of motion but. But it is also distracting and a bit kitchy so I think we should pass ([here](http://demo.rocknrolladesigns.com/html/jarvis/)).

Different shades of grey can cleanly separate parts of the page([here](http://demo.imransdesign.com/unika/) [here](http://www.templategarden.com/preview/alpha/template/index.html) [here](http://ironsummitmedia.github.io/startbootstrap-agency/) [here](http://make-lemonade.co/themes/?theme=Booker) [here](https://onepagelove.com/oneengine)and very subtly) [here](http://themeforest.net/item/quickstep-responsive-one-page-portfolio-theme/full_screen_preview/3237426)). Maybe we should strive to subtly change the background colour from one section to the next?

Although... very recognizable and consistently coloured headers can do something similar ([here](https://onepagelove.com/klim))

## Jekyll themes
With that out of the way lets turn to available Jekyll themes.




<http://jekyllthemes.org/>  
De bron van deze themes.


<http://clayh53.github.io/tufte-jekyll/> 7  
Mooi minimalistisch. Misschien goed om hier een lettertype van te kopieren. Jammer dat het geen drawer heeft en dat het zo duidelijk bedacht is in een tijd dat responsive nog niet speelde. En ik denk dat twee kolommen simpelweg geen goed idee is voor een site waarin je het simpel wil houden.




<http://sgentile.it/Travelogue/> 8.5  
Prachtig minimalistisch: paar plaatjes met een korte titel en datum. Menu onder de knop rechts. Wat een rust! En de post zijn ook erg mooi wat mij betreft. (Scrollable code...)

<http://mmistakes.github.io/hpstr-jekyll-theme/> 8.3  
Nette half-minimalistische site met drawer en briefkaarten.

<http://mmistakes.github.io/so-simple-theme/> 7.8  
Simpel en toch mooi. Alleen die cirkel die ik eerst zo mooi vond gaat op je zenuwen werken.

<http://www.jacoporabolini.com/emerald/> 7.5  
Mooi minimalistisch. Zelfs de knop helaas.



> Erg mooi.

<http://brianmaierjr.com/long-haul/> 7  
Wel een beetje saai.

> Erg mooi.

<http://gayan.me/gaya/> 7  
Mooi die minimalistische button naar de drawer links.
Die witte minimalistische strook op een grijze achtergrond met prima lettertypes is ook mooi.

<http://sparanoid.com/lab/amsf/> 6.5  
Almace Scaffolding. Grote duidelijke letters en dynamische onderstreping maar het klikt bij Iris meer dan bij mij.

> De mooiste!

<http://jekyll.gtat.me/>

> Erg mooi.
