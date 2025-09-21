# Juan Burciaga's Personal Blog

A minimalist personal blog built from scratch using plain HTML, Markdown, and simple automation tools. This project embraces the philosophy of simplicity and hands-on web development, avoiding complex build systems in favor of a more educational and nostalgic approach.

## Features

- **Pure HTML/CSS**: No JavaScript frameworks or complex build tools
- **Markdown-driven**: Write content in Markdown, convert to HTML
- **Minimal Design**: Clean, responsive layout using PicoCSS
- **GitHub Pages Ready**: Static site optimized for GitHub Pages hosting
- **Simple Automation**: Bash script for content generation
- **Mobile Friendly**: Responsive design that works on all devices

## Tech Stack

- **[Pandoc](https://pandoc.org/)** - Universal document converter for Markdown to HTML
- **[PicoCSS](https://picocss.com/)** - Minimal CSS framework for styling
- **Bash** - Simple build automation
- **GitHub Pages** - Static site hosting
- **Markdown** - Content authoring

## Project Structure

```
jpguevara.github.io/
├── articles/           # Source Markdown files and build scripts
│   ├── build.sh       # Build script for converting MD to HTML
│   ├── template.html  # HTML template for blog posts
│   └── *.md          # Source Markdown files
├── posts/             # Generated HTML files for blog posts
├── css/               # Stylesheets
│   ├── pico.min.css  # PicoCSS framework
│   └── blog.css      # Custom blog styles
├── images/            # Static assets (profile pictures, etc.)
├── index.html         # Main homepage (generated)
├── index.md          # Homepage source in Markdown
└── readme.md         # This file
```

## Getting Started

### Prerequisites

- [Pandoc](https://pandoc.org/installing.html) installed on your system
- A text editor for writing Markdown
- Git (for version control)

### Creating a New Blog Post

1. **Create a new Markdown file** in the `articles/` directory with the following structure:

```markdown
---
title: "Your Post Title"
date: 2025-01-XX
author: "Juan Burciaga"
author_bio: >
  Hi, I'm Juan Burciaga. I work with software and also make small games on
  the side. Most of my time goes into building and fixing large systems,
  but I like sharing some of what I learn here. Sometimes it's about
  coding, sometimes about games, or just things I'm trying out.
---

Your blog post content goes here. You can use any Markdown syntax.

## Subheadings Work Too

- Lists
- **Bold text**
- *Italic text*
- [Links](https://example.com)
```

2. **Build the post** using the build script:

```bash
cd articles/
./build.sh your-post-name.md
```

3. **Update the homepage** by adding your new post to `index.md`:

```markdown
<article>
<header>
*January XX, 2025*
**Your Post Title**
</header>

Brief description of your post...

[Read more](./posts/your-post-name.html)
</article>
```

4. **Generate the updated homepage**:

```bash
pandoc index.md -s --template=index.html5 --standalone -o index.html
```

5. **Commit and push** your changes:

```bash
git add .
git commit -m "Add new blog post: Your Post Title"
git push origin master
```

## Design Philosophy

This project follows three core principles:

1. **Simplicity First**: Plain HTML and CSS, no unnecessary complexity
2. **Educational Value**: Learn by building, understand every part of the process
3. **Nostalgic Appeal**: Embrace the simplicity of early web development

## Customization

### Styling
- Modify `css/blog.css` for custom styles
- The site uses PicoCSS as a base - check their [documentation](https://picocss.com/docs/) for customization options

### Templates
- Edit `articles/template.html` to modify the structure of blog posts
- The homepage template is defined in `index.html5` (though currently using inline HTML)

### Content
- All content is written in Markdown for easy editing
- Images go in the `images/` directory
- Update the author bio in the frontmatter of each post

## Writing Guidelines

- Use clear, concise language
- Include code examples when relevant
- Add frontmatter metadata to all posts
- Keep posts focused on a single topic
- Use descriptive titles and excerpts

## Contributing

While this is a personal blog, suggestions and improvements are welcome:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This project is open source and available under the [MIT License](LICENSE).

## Links

- **Live Site**: [jpguevara.github.io](https://jpguevara.github.io)
- **Author**: [Juan Burciaga](https://github.com/jpguevara)
- **Pandoc**: [pandoc.org](https://pandoc.org/)
- **PicoCSS**: [picocss.com](https://picocss.com/)
