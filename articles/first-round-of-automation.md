---
title: "First Round of Automation"
date: 2025-09-15
author: "Juan Burciaga"
author_bio: >
  Hi, I’m Juan Burciaga. I work with software and also make small games on
  the side. Most of my time goes into building and fixing large systems,
  but I like sharing some of what I learn here. Sometimes it’s about
  coding, sometimes about games, or just things I’m trying out.
---

While creating the first post, [My Blog from Scratch](my-blog-from-scratch.html "My Blog from Scratch"),  
I quickly realized how tedious it is to write HTML by hand. I had to be careful with the paragraph tags, escape characters, copy/paste all the common sections of the page, and create links between the index page and the post.

Here’s a snapshot of the first structure:

```
.
├── index.html
├── css/
│   └── blog.css
├── images/
│   └── profile.jpeg
└── posts/
    └── my-blog-from-scratch.html
```

To make my life easier, I implemented some changes to generate HTML files from Markdown using [Pandoc](https://pandoc.org/). Together with a few simple bash scripts to avoid retyping, this gave me the first round of automated post generation.

This article itself is written as a Markdown file and is generated to HTML with the command:

```bash
cd articles
./build.sh first-round-of-automation.md
# that will run the pandoc command:
# pandoc "$INPUT" -s --template=template.html --standalone -o "../posts/$OUTPUT"
```

New hierarchy is:

```
.
├── index.html
├── css/
│   └── blog.css
├── images/
│   └── profile.jpeg
├── posts/
│   └── my-blog-from-scratch.html
└── articles/
    └── my-blog-from-scratch.md
```

That will do it for now. After putting in all this effort, I'll start thinking about a better way to automate the process. I want to try another approach before jumping into any kind of server code. While making these changes, I kept hearing a voice in my head saying this was a waste of time and that I should write just a PHP script to handle it. Maybe that will be a future step, but for now I want to see how far I can take this experiment.
