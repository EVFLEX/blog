---
title: "Markdown + TeX + Jekyll = Blogposts"
author: "Auke Hoekstra"
date: "30 juli 2015"
output: html_document
layout: post
tags:
- markdown
- TeX
- Jekyll
- Github
thumb: ../pics/tex-typesetting.jpg
categories: Workflow
---

I write in markdown with $$\textsf{R}$$ and $$\TeX$$ (or rather $$\LaTeX$$) thrown in where appropriate. Jekyll and GitHub Pages automatically turn my writings into blogposts like this. But I've been stuggling to teach Jekyll to accept $$\TeX$$. In essence you have to tell Jekyll to use the kramdown plugin which in turn has to use Mathjax to render the $$\TeX$$. I could not get it to work but it turns out the [solution is simple](http://www.minixli.com/2014/10/20/using-mathjax-with-jekyll/) once you know it:

Open the `_config.yml` file of your Jekyll site and search for a line beginning with `markdown:`. It should read `markdown: kramdown`.

Open your `_layouts\default.html` file and after the line that says `<body>` you add the following line:

    <script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>

If you want to use the Jekyll server to do this locally on your computer you should also have kramdown installed. Go to the command line and type `gem install kramdown`.

And now you can write things like:

    $$( x^2 + y^2 = 1 )$$

    $$\frac{d}{dx}\left( \int_{0}^{x} f(u)\,du\right)=f(x)$$

    $$\begin{align*}
& \phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)
  = \sum_{i=1}^n \sum_{j=1}^n x_i y_j \phi(e_i, e_j) = \\
  & (x_1, \ldots, x_n) \left( \begin{array}{ccc}
      \phi(e_1, e_1) & \cdots & \phi(e_1, e_n) \\
      \vdots & \ddots & \vdots \\
      \phi(e_n, e_1) & \cdots & \phi(e_n, e_n)
    \end{array} \right)
  \left( \begin{array}{c}
      y_1 \\
      \vdots \\
      y_n
    \end{array} \right)
\end{align*}$$

Which will become

$$( x^2 + y^2 = 1 )$$

$$ \frac{d}{dx}\left( \int_{0}^{x} f(u)\,du\right)=f(x) $$

$$
\begin{align*}
  & \phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)
  = \sum_{i=1}^n \sum_{j=1}^n x_i y_j \phi(e_i, e_j) = \\
  & (x_1, \ldots, x_n) \left( \begin{array}{ccc}
      \phi(e_1, e_1) & \cdots & \phi(e_1, e_n) \\
      \vdots & \ddots & \vdots \\
      \phi(e_n, e_1) & \cdots & \phi(e_n, e_n)
    \end{array} \right)
  \left( \begin{array}{c}
      y_1 \\
      \vdots \\
      y_n
    \end{array} \right)
\end{align*}
$$

And that's no all.

If you feel the need you can sprinkle $$\frac{d}{dx}\left( \int_{0}^{x} f(u)\,du\right)=f(x)$$ right in the middle of your text and the height will be compressed so your text flow is not impacted.

Happy blogging!
