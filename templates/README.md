# Blog Post Templates (Intro to Data Science)

This folder contains a starter template (`blog-post-template.qmd`) to help you create new blog posts and portfolio pieces as you learn out loud in Intro to Data Science.

## How to Create a New Blog Post

1. **Create a new post folder inside `posts/`:**
   ```bash
   mkdir posts/my-post-name
   ```
   *(Use lowercase letters and dashes for folder names, e.g., `posts/exploring-penguins`)*

2. **Copy the template into your new post folder:**
   ```bash
   cp templates/blog-post-template.qmd posts/my-post-name/index.qmd
   ```

3. **Optional: Copy or add an image for your post cover:**
   ```bash
   cp templates/image.jpg posts/my-post-name/image.jpg
   ```

4. **Edit the YAML frontmatter:**
   - Update `title` with your post title
   - Add your name as `author`
   - Set the `date` (format: `YYYY-MM-DD`)
   - Choose descriptive `categories` (e.g., `[R, ggplot2, tidyverse, EDA]`)

5. **Write your content & code:**
   - Replace placeholder text with your own words and reflections
   - Add R code chunks (` ```{r} ... ``` `) to import, clean, and visualize data
   - Explain your code and interpret the graphs

6. **Preview your post:**
   ```bash
   quarto preview
   ```

## Learning Out Loud: What Makes a Great Blog Post?

- 🎯 **Clear Research Question**: State what you are exploring right away.
- 📊 **Tidyverse & ggplot2**: Show clean R code for data wrangling and visualizations.
- 💡 **Interpretation**: Don't just display code—explain what the numbers and graphs mean.
- 🛠️ **Reflections & Debugging**: Describe any roadblocks you faced and how you solved them.
- 📚 **Citations**: Attribute data sources and documentation.
