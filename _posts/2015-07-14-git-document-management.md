---
layout: post
title: "Git Document Management"
author: "Auke Hoekstra"
date: 2015-07-14
/backgrounds: ../Pics/shared_public_library.jpg
thumb: ../Pics/Felicia_Day_Thumb.jpg
categories: development work
tags: home work office coding design
---
![](../Pics/Felicia_Day_Librarian_Widescreen.jpg)

**I think the use of coders jargon clouds the fact Git is also perfect for "normal" people that want document management and collaboration for "normal" documents. E.g. lawwyers, writers, consultants and people working together on projects. This post uses the metaphor of a public library.**

# Introduction
Programmers (or "coders") are notoriously precise about managing their code: one typo and nothing works anymore. One of the best programs for managing code is called Git. It was developed by Linus Thorvalts to manage the development of Linux. But what is Git exactly?

You probably know that it is a good idea to save your work in case your program crashes and to make a backup in case your hard drive crashes. Git does not change that. For you personally, Git is about taking snapshots of your files so you can return to that moment at any time in the future. For a team, Git is about working together without getting in each others way.

Do you keep multiple versions of documents? Do you wish you had more insight in what you where doing with them a year ago? Do you need to work on documents with others? Then Git can simplify your life. Imagine Git as your personal librarian.

# Version management
Imagine standing in your private library. Around you are all the important versions of all the documents you have ever worked on. Every time you archived a set of documents they where bound into a book that appears in this library. Git also added a first page to each book with a description of what's inside:

  * The documents in the book and their authors.
  * The reason this set of documents was put in the library.
  * Who committed the book to the library and when.
  * The relation with books that where committed to the library earlier.
  * A clever way to check that the contents of the book have not been tampered with.

Working with Git becomes straighforward with this mental image in mind:

  * Put a number of documents together. This is called "**staging**".
  * Write a short message and send message+documents to your librarian. She writes the title page, binds everything together, and commits the book to your library. This process is called "**committing**" and happens with one click or command.

The library is called a "**repository**"" or "repo" in Git lingo. When you encounter the word repository you can imagine a library in your mind.

![private library](../Pics/Private_Library.jpg)

Maybe staging seems unnecesary to you and when you are working on one unconnected document it is. But often you are working on multiple documents at once. E.g. a Word document containing graphs from an Excel spreadsheet. Isn't it neat that you can easily commit a set of documents belonging so you can return to their corresponding versions later?

Working with Git feels alien the first week or so. And it takes a tiny bit more effort than just saving your document. You also have to click stage, then click commit and then type in your commit message. But with those three simple actions (it takes less than five seconds) you commit a new tamperproof book with extensive information about its history to your library forever. You can retrace your steps at any future moment in time. And you no longer need backup copies or multiple filenames for versions of your documents. So the library cleans up your workspace.

# Your library on Github
Github is basically a place to store Git libraries online. There are many such services but Github is the largest and when you are all about openness and sharing it is probably your first choice. If you want to create a lot of private libraries you might take a look at other services like bitbucket.

Once you know how to "publish" all your books to an online library you get two extra commands or buttons. One to upload/push your books/commits to your online library/repository. One to download/pull them from your online library.

Publishing a library on Github gives you several extra possibilities:

  * You have a copy of your library when something goes awry with your local copy.
  * You can access your files from every device with an Internet connection.
  * You can choose to give others access to your library so they can borrow your books.
  * You can create a website where the last versions are displayed with nice formatting.
  * You can make it a shared library where others can also store books. Let's look at that last point in some more detail.

# Sharing the same library
If you work together with others on documents, chances are that you often email each other new versions. This works remarkably well compared to snailmail but it is still time consuming and messy. Have you included the right persions in your email? Has everybody else? What is now the latest version? Is there one latest version or are there multiple authors with diverging versions? How do you know that you can find all emails with changes when everybody uses different words in the mail and different filenames for their versions? Et cetera.

A shared directory (e.g. Dropbox) is often an improvement to email. But how do you know who updated the document when and for what reason? Dropbox does not exactly give you a nice version history. And how do you get notified something changed? Dropbox can do this automatically but do you want email everytime someone makes a small change? And don't you want to work on the document in private sometimes? So the usual solution is to save new versions of the document in the Dropbox folder under a new name and tell everybody about it through email. This kind of brings us back to square one.

![public library](../Pics/shared_public_library.jpg)

With Git you have a shared public library with all the bells and whistles. Just stick to your simple stage-commit routine and Git takes care of the rest. With Git you have access to all versions of each others books with a crystal clear version history. You can get an email everytime someone makes a commit or you can just dive into the repository when you feel like it. Either way you can get to work right away with the whole document history at your fingertips.
