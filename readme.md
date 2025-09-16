# Simple Blog

A simple blog created from scratch using plain html:
- [pandoc](https://pandoc.org/) for markdown conversion.
- [PicoCSS](https://picocss.com/) for the styles.


The goal is to have my personal blog written in plain md files and generate an static site from it, I could use other tools like the many mentioned in [jamstack](https://jamstack.org/generators/), but the goal is to code and have fun while doing it.


## Rules

1. It should be plain html
2. The dist files should be at the root to allow a simple commit/pull request into a github repo.
3. Have fun.

## How to run it

Create a `post.md` file with the below structure:

```md
---
title: "My Blog from Scratch"
date: 2025-09-12
author: "Juan Burciaga"
author_bio: >
  Hi, I’m Juan Burciaga. I work with software and also make small games on
  the side. Most of my time goes into building and fixing large systems,
  but I like sharing some of what I learn here. Sometimes it’s about
  coding, sometimes about games, or just things I’m trying out.
---

The content goes here. You can use any md syntax here.

```

build by running the command:

```bash
./build.sh post.md
```

move the generated file into the root.

```bash
pandoc index.md -s --template=index.html5 --standalone -o index.html 
```

that will generate the index.html