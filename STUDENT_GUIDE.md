# Student Guide: Building Your Data Science Portfolio

Welcome to your portfolio website for **Intro to Data Science**! 

In this course, you will build and maintain a personal website using **Quarto** and **R with the tidyverse**. This site will host your blog posts as you **"learn out loud"**—sharing what you're discovering, showing your code and plots, and presenting portfolio pieces for your course grade.

---

## 🚀 Step 1: Open Your Website in Codespaces

1. Click the assignment link in **Classmoji** to create your private repository.
2. In your repository on GitHub, click the green **Code** button.
3. Select the **Codespaces** tab and click **Create codespace on main**.
4. Wait for your Codespace to load (Quarto, R, and the tidyverse are ready automatically).

---

## 👀 Step 2: Preview Your Website

To see your website live as you edit:

1. Open the terminal (**Terminal > New Terminal**).
2. Type the following command and press Enter:
   ```bash
   quarto preview
   ```
3. A browser tab will open showing your live site. Whenever you save changes to any file, the preview refreshes automatically!
4. *(To stop the preview server later, click in the terminal and press `Ctrl + C`).*

---

## 🎨 Step 3: Personalize Your Pages

You will customize four main files in the project:

### 1. `_quarto.yml` (Website Header)
Open `_quarto.yml` and add your name and GitHub username:
```yaml
website:
  title: "Jane Doe's Portfolio"        # Your name
  description: "Intro to Data Science Portfolio"
  navbar:
    right:
      - icon: github
        href: https://github.com/yourusername  # Your GitHub link
```

### 2. `index.qmd` (Home Page)
Introduce yourself, welcome visitors, and explain what you're working on.

### 3. `about.qmd` (About Page)
Share your background, academic major, and what excites you about working with data.

### 4. `resume.qmd` (Resume Page)
Fill in your education, technical skills (R, tidyverse, Quarto), coursework, and projects.

> [!TIP]
> Be sure to replace any placeholder brackets like `[Your Name]` with your actual information!

---

## 📝 Step 4: Write Blog Posts (Learning Out Loud)

Blog posts live in the `posts/` folder. Each post gets its own subfolder.

### How to Create a New Post:
1. In the terminal, create a new post folder and copy the template:
   ```bash
   mkdir posts/my-post-name
   cp templates/blog-post-template.qmd posts/my-post-name/index.qmd
   ```
2. Open `posts/my-post-name/index.qmd` and edit the header:
   ```yaml
   ---
   title: "Exploring Penguin Measurements with ggplot2"
   author: "Your Name"
   date: "2026-02-15"
   categories: [R, tidyverse, ggplot2]
   image: "image.jpg"
   ---
   ```
3. Add your content and R code chunks:

````markdown
Here is a scatter plot exploring our dataset:

```{{r}}
#| label: my-plot
#| echo: true
#| warning: false
#| message: false

library(tidyverse)

ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point(size = 3) +
  labs(
    title = "Engine Size vs Highway Fuel Efficiency",
    x = "Displacement (L)",
    y = "Highway MPG"
  ) +
  theme_minimal()
```
````

4. **"Learn Out Loud":** In your post, explain what the graph shows, what was challenging, any error messages you worked through, and what you learned!

---

## 🌐 Step 5: Publish Your Site Online

When you are ready to update your live website on GitHub Pages:

1. **Build your site** in the terminal:
   ```bash
   quarto render
   ```
2. **Save and push your work** to GitHub:
   ```bash
   git add .
   git commit -m "Add new blog post"
   git push origin main
   ```
3. **One-Time Setup: Enable GitHub Pages**:
   - Go to your repository on GitHub.
   - Click **Settings** → **Pages** (in the left sidebar).
   - Under **Build and deployment > Source**, choose:
     - **GitHub Actions** (if using automated deployment) OR
     - **Deploy from a branch** (Branch: `main`, Folder: `/docs`).
   - Click **Save**.

Your site will be live at:
`https://<your-username>.github.io/<repository-name>/`

---

## 💡 Quick Markdown & R Cheatsheet

### Text Formatting
- `**bold text**` → **bold text**
- `*italic text*` → *italic text*
- `# Heading 1`, `## Heading 2`, `### Heading 3`
- `[Link Text](https://example.com)`

### R Code Options (Inside Code Chunks)
- `#| echo: true` — Shows your R code in the output (recommended!).
- `#| warning: false` — Hides warnings from appearing on your webpage.
- `#| message: false` — Hides library loading messages.
- `#| fig-cap: "..."` — Adds a caption below your chart.

### Callout Boxes
```markdown
::: {.callout-tip}
## Tip
Share a helpful insight you learned while exploring the data!
:::
```

---

## 🔧 Common Questions & Troubleshooting

### Q: How do I restart the preview if it freezes?
Click in the terminal, press `Ctrl + C`, and type `quarto preview` again.

### Q: A package is missing or not loading
In the terminal, run:
```bash
Rscript install_packages.R
```

### Q: Need help?
- [Book Office Hours with Dr. Poulsen](https://outlook.office.com/bookwithme/user/f78874d353574c549378ea832faf2ae7@washcoll.edu?anonymous&ep=plink) or ask questions in class!
