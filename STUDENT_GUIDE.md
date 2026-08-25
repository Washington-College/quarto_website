# Student Portfolio Website: Setup & Assignment Guide

Welcome to your **Intro to Data Science** Portfolio project! In this course, you will build and maintain a personal website using **Quarto** and **R with the tidyverse**, published online via **GitHub Pages**.

This website will host your blog posts as you **"learn out loud"** throughout the semester—documenting your data analyses, sharing visualizations, reflecting on problem-solving challenges, and producing portfolio pieces that contribute to your course grade.

---

## 📚 Table of Contents

1. [Assignment Overview & Learning Out Loud](#assignment-overview--learning-out-loud)
2. [Getting Started via Classmoji](#getting-started-via-classmoji)
3. [Environment Setup & Verification](#environment-setup--verification)
4. [Customizing Your Website Pages](#customizing-your-website-pages)
5. [Writing Blog Posts with R & Tidyverse](#writing-blog-posts-with-r--tidyverse)
6. [Deploying Your Site to GitHub Pages](#deploying-your-site-to-github-pages)
7. [Assignment Requirements & Grading Checklist](#assignment-requirements--grading-checklist)
8. [Troubleshooting & FAQs](#troubleshooting--faqs)

---

## 🌟 Assignment Overview & Learning Out Loud

### Why Build a Portfolio?
A data science portfolio is more than just homework—it is public evidence of your ability to ask interesting questions, wrangle raw data, build informative visualizations, and clearly communicate your insights.

### What is "Learning Out Loud"?
Learning data science is an iterative process. "Learning out loud" means:
- Documenting your journey and thought process as you tackle new concepts.
- Showing your code and how you generated your visualizations with `ggplot2` and `dplyr`.
- Sharing the roadblocks you hit (e.g., unexpected data types, tricky joins, debugging code) and explaining how you solved them.
- Asking open questions and proposing next steps for further inquiry.

---

## 🚀 Getting Started via Classmoji

### Step 1: Accept the Assignment Link
1. Click the assignment link provided in **Classmoji** by Dr. Poulsen.
2. Accept the assignment. GitHub will automatically create a private repository under your GitHub account for this project.
3. Wait a moment for GitHub to initialize your repository.

### Step 2: Open in GitHub Codespaces
1. Navigate to your newly created repository on GitHub.
2. Click the green **Code** button.
3. Select the **Codespaces** tab.
4. Click **Create codespace on main**.
5. Wait for Codespaces to build your cloud container (this takes 2–4 minutes the first time).

The container automatically:
- Sets up **Quarto CLI**
- Configures **R** with `knitr`, `rmarkdown`, `tidyverse`, and `httpgd`
- Installs the Quarto and R VS Code extensions

---

## 🔍 Environment Setup & Verification

Once your Codespace finishes building:

1. Open the integrated terminal (from the top menu: **Terminal > New Terminal**).
2. Verify that R and the tidyverse are ready:
   ```bash
   R -e "library(tidyverse); message('✓ Tidyverse is ready!')"
   ```
3. Run the Quarto diagnostic check:
   ```bash
   quarto check
   ```
   You should see green checkmarks `[✓]` for R, Knitr, and Quarto.

> [!TIP]
> If any R package is missing or you need to re-install packages, run:
> ```bash
> Rscript install_packages.R
> ```

---

## 🎨 Customizing Your Website Pages

### 1. Update Site Configuration (`_quarto.yml`)
Open `_quarto.yml` and personalize the site header and navigation:
```yaml
website:
  title: "Jane Doe's Data Science Portfolio"   # Replace with your name
  description: "Intro to Data Science Portfolio"
  navbar:
    left:
      - text: "Home"
        href: index.qmd
      - text: "Blog"
        href: blog.qmd
      - text: "Resume"
        href: resume.qmd
      - text: "About"
        href: about.qmd
    right:
      - icon: github
        href: https://github.com/yourusername  # Your GitHub profile link
```

### 2. Personalize Core Pages
- **Home Page (`index.qmd`)**: Update the welcome message to introduce yourself and describe what visitors will find on your site.
- **About Page (`about.qmd`)**: Add your bio, academic background, data science interests, and contact information.
- **Resume Page (`resume.qmd`)**: Fill in your education, technical skills (R, tidyverse, Quarto, Git), coursework, and project descriptions. Replace all placeholder brackets `[...]`.

### 3. Preview Your Website Locally
To see how your website looks while you edit:
```bash
quarto preview
```
- Codespaces will open a browser window displaying your live site.
- Whenever you save changes to a `.qmd` file, the preview updates automatically!
- To stop the preview server, press `Ctrl + C` in the terminal.

---

## 📝 Writing Blog Posts with R & Tidyverse

All blog posts live inside the `posts/` directory. Each post has its own subfolder containing an `index.qmd` file and optional images.

### Step 1: Create a New Post Folder
To create a new post, create a descriptive folder name inside `posts/`:
```bash
mkdir posts/exploring-penguins
```

### Step 2: Copy the Starter Template
Copy the course template into your new post directory:
```bash
cp templates/blog-post-template.qmd posts/exploring-penguins/index.qmd
```

### Step 3: Edit Your Post Frontmatter
Open `posts/exploring-penguins/index.qmd` and update the YAML frontmatter at the very top:
```yaml
---
title: "Exploring Penguin Physical Traits with ggplot2"
author: "Your Name"
date: "2026-02-10"
categories: [R, tidyverse, ggplot2, EDA]
image: "image.jpg"
draft: false
---
```

### Step 4: Write Content & Add R Code Chunks
Write in Markdown and include R code chunks to analyze data and display plots.

````markdown
## Visualizing Flipper Length vs Body Mass

Here we explore the relationship between flipper length and body mass across penguin species using the tidyverse:

```{{r}}
#| label: fig-penguins
#| echo: true
#| warning: false
#| message: false
#| fig-cap: "Flipper length vs body mass by species"

library(tidyverse)

# Example using built-in or loaded data
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  geom_point(size = 3, alpha = 0.8) +
  labs(
    title = "Penguin Size Measurements",
    x = "Flipper Length (mm)",
    y = "Body Mass (g)",
    color = "Species"
  ) +
  theme_minimal()
```
````

### Key R Code Chunk Options
| Option | What it does | Recommended setting |
|---|---|---|
| `#| echo: true` | Displays the R source code | `true` (show your work!) |
| `#| warning: false` | Hides package warnings from appearing on the page | `false` |
| `#| message: false` | Hides package startup messages (e.g. tidyverse attach) | `false` |
| `#| fig-cap: "..."` | Adds a caption below your plot | Descriptive text |
| `#| code-fold: true` | Makes code collapsible for cleaner reading | Optional |

---

## 🌐 Deploying Your Site to GitHub Pages

Publishing your site makes it visible to the instructor, your peers, and future employers!

### Step 1: Render the Website
In the terminal, run:
```bash
quarto render
```
This executes all your R code chunks, generates figures, and compiles the website into the `docs/` folder.

### Step 2: Commit and Push to GitHub
Stage, commit, and push your changes:
```bash
git add .
git commit -m "Update portfolio pages and add new blog post"
git push origin main
```

### Step 3: Enable GitHub Pages (One-Time Setup)
1. Go to your repository on GitHub.
2. Click **Settings** (gear tab at the top).
3. In the left navigation menu under **Code and automation**, click **Pages**.
4. Under **Build and deployment > Source**, select **Deploy from a branch**.
5. Set:
   - **Branch**: `main`
   - **Folder**: `/docs`
6. Click **Save**.

### Step 4: Access Your Live Website
In a few minutes, your site will be live at:
```
https://<your-github-username>.github.io/<your-repository-name>/
```
*(GitHub will display your exact URL at the top of the Pages settings page).*

Whenever you make future updates:
1. Edit your files.
2. Run `quarto render`.
3. Commit and push (`git add .`, `git commit -m "..."`, `git push origin main`).
4. Your live site will automatically update within 1–2 minutes!

---

## 🎯 Assignment Requirements & Grading Checklist

Before submitting your repository link for grading, confirm that your site meets all requirements:

- [ ] **Site Configuration**: `_quarto.yml` contains your name and working GitHub links.
- [ ] **Home Page (`index.qmd`)**: Personalized welcome introduction for your Intro to Data Science portfolio.
- [ ] **About Page (`about.qmd`)**: Complete biography, background, and academic interests.
- [ ] **Resume Page (`resume.qmd`)**: Detailed education, Intro to Data Science coursework, and R/tidyverse skills.
- [ ] **Blog Posts**: Contains your authored blog posts in `posts/` documenting your data analyses.
- [ ] **Working Code & Visualizations**: Code blocks use `{r}` and `tidyverse` packages without rendering errors.
- [ ] **No Placeholders**: All template brackets `[...]` and dummy filler text have been replaced with your own writing.
- [ ] **Live Deployment**: Website renders cleanly to `docs/` and is publicly accessible via GitHub Pages.

---

## 🔧 Troubleshooting & FAQs

### Q: How do I fix `Error in library(tidyverse): there is no package called 'tidyverse'`?
**Solution:** Run the package installer in your terminal:
```bash
Rscript install_packages.R
```

### Q: `quarto render` fails with an R error in a blog post
**Solution:**
1. Check the error message in the terminal—Quarto will tell you which file and line number failed.
2. Run `quarto preview` or open R in the terminal to test your R code line by line.
3. Make sure all necessary packages (`library(tidyverse)`) are loaded at the top of your code chunk or post.

### Q: My changes aren't showing up on my live GitHub Pages site
**Solution:**
1. Did you run `quarto render` before committing? (Check that files inside `docs/` have updated timestamps).
2. Did you stage and push everything? (`git add .`, `git commit -m "update"`, `git push origin main`).
3. Allow 2–3 minutes for GitHub Pages to deploy, then do a hard refresh in your browser (`Cmd + Shift + R` on Mac, `Ctrl + F5` on Windows).

### Q: Need more help?
- Review the **[Quarto Reference](QUARTO_REFERENCE.md)** or **[R Setup Guide](R_SETUP.md)**.
- [Schedule Office Hours with Dr. Poulsen](https://outlook.office.com/bookwithme/user/f78874d353574c549378ea832faf2ae7@washcoll.edu?anonymous&ep=plink).
