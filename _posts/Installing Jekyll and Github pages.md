---
title: "Installing Jekyll and Github pages"
author: "Auke Hoekstra"
date: "27 juli 2015"
output: html_document
---

**I wanted to create my website using Github pages and Jeckyll. Here's how I did it.**

[Jekyllrb](jekyllrb.com) is supposed to be the comprehensive reference for this but because I wanted something quick that took my by the hand I followed along with this [video by Brad Westfall](https://youtu.be/nN6QuNqmAwk).

### Make powershell default
First I made powershell the default command line on my windows machine. Simply install powershell and run the [first script on this page](http://blogs.interfacett.com/how-make-powershell-default-console-windows-server-core). Powershell can do much more than your regular command line. Two examples: it supports cut-and-paste and shows you which branch you are in.

### Create a hello world page
I opened github for windows and (using the gearwheel) opened the github shell. Powershell opened for me in the right directory (github root). Then I typed:

    mkdir evflex        # to create a directory
    cd blog             # go into the directory
    git init            # to create the repo (.git files) here
    touch index.html    # to create the index file that github will look for

For testing an empty index.html file is not optimal. So I opened it in an editor (like atom or notepad) and typed:

    <HTML>
       <HEAD>
          <TITLE>
             evflex says hello
          </TITLE>
       </HEAD>
    <BODY>
       <H1>evflex are go</H1>
       <P>Hello evflex readers!</P>
    </BODY>
    </HTML>

I saved my changes, closed the editor and switched back to powershell. I added the file and made my initial commit:

    git add .
    git commit -m "init"

Then I went to github.com to create the remote repo on github. I chose create new repo, typed in evflex, unchecked "make readme.md" and on the next page there was a command for when you already have a local repo. This I pasted into my local powershell with rightclick:

    git remote add origin git@github.com:AukeHoekstra/evflex.git
    git push -u origin master

This tells the local repo where to find its remote repo on github and it pushes the first content (the index.html file) to the remote repo.

Finally I created a branch called gh-pages. This special branch is where the Jekyll server on github.com will be looking for new content. From this branche I pushed the index.html page to github:

    git branch gh-pages
    git push origin gh-pages

That is basically it. After a few minutes (it can take hours) I surfed to the following location to admire my message to the world:

    aukehoekstra.github.io/evflex.

### Connect evflex.github.io to evflex.org
Buy .org and .com, .net, .nl and .eu.
Redirect .org to github.
Redirect .com, .net, .nl and .eu to .org.

The video says to create a file called "CNAME" with as content just the URL where you want to point from. E.g. evflex.org. Then:

    git add . 
    git commit -m "cname"
    git checkout gh-pages # switches you to the gh-pages branch
    git merge master # merges cname file of the master into gh-pages
    git push --set-upstream origin gh-pages
    git push # puts the content of gh-pages on github

The first time I failed because the video did not prompt me to set the upstream branch. But this worked so to check I went to github.com, refreshed the page and saw that CNAME showed up in the branch.

Another problem I ran into was that github kept warning me that it had added Github (RSA) to the list of known hosts. Jeremiah Gowdy came up with [the solution on stackoverflow](http://stackoverflow.com/questions/9299651/warning-permanently-added-to-the-list-of-known-hosts-message-from-git): go to users\Auke\.ssh and add a file called config with the line "UserKnownHostsFile ~/.ssh/known_hosts". Problem solved.

The final step is to tell the registrar to point to Github. In my case this is Byte.nl. So I surfed to their service panels DNS settings and create the following records:

    evflex.org, type A, content 192.30.252.153
    evflex.org, type A, content 192.30.252.154
    www.evflex.org, type CNAME, content evflex.org

This can take up to 24 hours but within a minute I could type <evflex.org> and <www.evflex.org> and I was taken directly to my Hello world page at aukehoekstra.github.io/evflex without me (or my reader) noticing.

### Install Jekyll
Windows is not officially supported (?) but I was directed to <http://jekyll-windows.juthilo.com/>. This site told me to to to <http://rubyinstaller.org/downloads/> and install Ruby and the Devkit (like DevKit-mingw64). I had to restart the computer before I could give the following commands in powershell:

    cd c:\Ruby22-x64start
    ruby dk.rb init 
    ruby dk.rb install

Then I installed Python version 2 (!). Don't forget to choose "add python.exe to path" as a complete install on the harddrive. This will also give you pip. Finally we do:

    gem install jekyll # takes a while
    cd c:\users\auke\github
    jekyll new blog # lots of files into the blog
    cd blog
    jekyll serve

Surf to the ip number that Jekyll shows in powershell and convince yourself: **Jekyll is up and running!**
