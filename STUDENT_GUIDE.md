# Student Portfolio Website - Setup Guide

Welcome to your Intro to Data Science Portfolio project! This guide will help you set up your personal website using Quarto and deploy it to GitHub Pages.

## 📚 Table of Contents

1. [Getting Started](#getting-started)
2. [Customizing Your Website](#customizing-your-website)
3. [Adding Blog Posts](#adding-blog-posts)
4. [Updating Your Resume](#updating-your-resume)
5. [Deploying to GitHub Pages](#deploying-to-github-pages)
6. [Troubleshooting](#troubleshooting)

---

## 🚀 Getting Started

### Step 1: Accept the Classmoji Assignment

1. Click on the assignment link provided by Dr. Poulsen
2. Accept the assignment - GitHub will create a personal repository for you
3. Wait for the repository to be created (this may take a minute)

### Step 2: Open in Codespaces

1. Go to your newly created repository on GitHub
2. Click the green **"Code"** button
3. Select the **"Codespaces"** tab
4. Click **"Create codespace on main"**
5. Wait for the Codespace to build (first time may take 3-5 minutes)

The Codespace will automatically:
- Install Quarto
- Set up Python and R environments
- Install VS Code extensions for Quarto
- Run `quarto check` to verify everything is working

### Step 3: Verify Your Setup

Once the Codespace opens:

1. Wait for the automatic setup to complete (you'll see "Running postCreateCommand..." in the terminal)
2. Python packages (pandas, matplotlib, etc.) will be installed automatically
3. Open the terminal (Terminal > New Terminal) if not already open
4. Verify installation: `python3 -c "import pandas, matplotlib; print('✓ Packages ready!')"`
5. Check Quarto: `quarto check`
6. You should see green checkmarks ✓ indicating everything is installed correctly

**Note:** If you need to reinstall packages later, run: `python3 -m pip install --user -r requirements.txt`

---

## 🎨 Customizing Your Website

### Update Site Information

1. Open `_quarto.yml`
2. Change the following:
   ```yaml
   title: "My Portfolio"  # Change to your name
   description: "Data Ethics and Practicum Portfolio"
   ```
3. Update the GitHub link in the navbar:
   ```yaml
   - icon: github
     href: https://github.com/yourusername  # Use your GitHub username
   ```

### Personalize Your Pages

#### Home Page (`index.qmd`)
- Open `index.qmd`
- Edit the welcome message
- Add information about yourself and your projects

#### About Page (`about.qmd`)
- Open `about.qmd`
- Write a brief bio
- Add your interests and background
- Update your contact information

#### Resume Page (`resume.qmd`)
- Open `resume.qmd`
- Fill in your education, skills, experience, and projects
- Remove the placeholder text and add your actual information

### Preview Your Website Locally

1. In the terminal, run:
   ```bash
   quarto preview
   ```
2. A browser preview will open showing your website
3. As you edit files, the preview will automatically update
4. Press `Ctrl+C` in the terminal to stop the preview

---

## 📝 Adding Blog Posts

Blog posts are stored in the `posts/` directory. Each post should be in its own folder.

### Create a New Blog Post

1. Create a new folder in `posts/`:
   ```bash
   mkdir posts/my-new-post
   ```

2. Create an `index.qmd` file in that folder:
   ```bash
   touch posts/my-new-post/index.qmd
   ```

3. Add the following template to your new `index.qmd`:
   ```yaml
   ---
   title: "Your Post Title"
   author: "Your Name"
   date: "2026-01-15"
   categories: [data science, python, analysis]
   ---

   ## Introduction

   Your post content goes here...
   ```

### Blog Post Tips

- **Use descriptive titles**: Make it clear what the post is about
- **Add categories**: Help organize your posts by topic
- **Include code examples**: Use code blocks to show your work
- **Add images**: Place images in your post folder and reference them
- **Write regularly**: Aim for at least one post per project or assignment

### Example Code Block in a Post

````markdown
```{{python}}
#| echo: true
#| code-fold: false

import pandas as pd
import matplotlib.pyplot as plt

# Your code here
```
````

---

## 📄 Updating Your Resume

The `resume.qmd` file contains your resume. Here's how to customize it:

### Structure

1. **Contact Information**: Add your email, GitHub, LinkedIn
2. **Education**: List your degree and relevant coursework
3. **Skills**: List programming languages and tools you know
4. **Projects**: Highlight your best work (including class projects)
5. **Experience**: Add internships, jobs, or relevant experience

### Tips for a Good Data Science Resume

- **Quantify achievements**: Use numbers when possible
- **Focus on impact**: What did your work accomplish?
- **Use action verbs**: "Analyzed", "Developed", "Implemented", etc.
- **Keep it concise**: 1-2 pages maximum
- **Update regularly**: Add new projects as you complete them

---

## 🌐 Deploying to GitHub Pages

Once you're happy with your website, it's time to publish it online!

### Step 1: Build Your Website

1. In the terminal, run:
   ```bash
   quarto render
   ```
2. This creates a `docs/` folder with your complete website

### Step 2: Commit and Push Your Changes

1. Stage all your changes:
   ```bash
   git add .
   ```

2. Commit with a message:
   ```bash
   git commit -m "Initial portfolio setup"
   ```

3. Push to GitHub:
   ```bash
   git push origin main
   ```

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **"Settings"** (in the repository menu)
3. Scroll down to **"Pages"** (in the left sidebar under "Code and automation")
4. Under **"Source"**, select:
   - **Branch**: `main`
   - **Folder**: `/docs`
5. Click **"Save"**
6. Wait a few minutes for deployment

### Step 4: Access Your Website

Your website will be available at:
```
https://yourusername.github.io/repository-name/
```

- Replace `yourusername` with your GitHub username
- Replace `repository-name` with your repository name

GitHub will show you the exact URL in the Pages settings.

### Step 5: Update Your Website

Whenever you make changes:

1. Edit your files in Codespaces
2. Run `quarto render` to rebuild the site
3. Commit and push your changes:
   ```bash
   git add .
   git commit -m "Updated blog post"
   git push origin main
   ```
4. GitHub Pages will automatically update your site (may take 2-5 minutes)

---

## 🔧 Troubleshooting

### Issue: "No module named 'pandas'" in Jupyter

**Solution:**
Install packages using the system Python:
```bash
/usr/local/python/current/bin/python3 -m pip install -r requirements.txt --user
```

Or use this simpler command:
```bash
python3 -m pip install --user pandas matplotlib numpy seaborn plotly scikit-learn
```

After installation:
1. Stop the preview (Ctrl+C in terminal)
2. Run `quarto preview` again
3. The packages should now be available

### Issue: Website isn't updating on GitHub Pages

**Solution:**
- Make sure you ran `quarto render` before pushing
- Check that the `docs/` folder is included in your commit
- Wait 5-10 minutes - GitHub Pages can take time to update
- Clear your browser cache and refresh

### Issue: "quarto: command not found"

**Solution:**
- Make sure you're in a Codespace, not working locally
- Try closing and reopening the terminal
- Restart the Codespace if needed

### Issue: Preview doesn't work

**Solution:**
- Make sure you ran `quarto preview` in the terminal
- Check that port 4200 or similar is forwarded (Codespaces does this automatically)
- Try clicking the popup that says "Open in Browser"

### Issue: Code blocks aren't rendering properly

**Solution:**
- Check your YAML header in the code block
- Make sure language is specified: ` ```{python}` or ` ```{r}`
- Verify indentation is correct

### Issue: Blog posts aren't showing up

**Solution:**
- Make sure your post is in the `posts/` directory
- Each post should be in its own folder with an `index.qmd` file
- Check that your post has the required YAML frontmatter (title, author, date)
- Run `quarto render` to rebuild the site

---

## 📚 Additional Resources

### Quarto Documentation
- [Quarto Website Guide](https://quarto.org/docs/websites/)
- [Quarto Publishing](https://quarto.org/docs/publishing/github-pages.html)
- [Quarto Blogs](https://quarto.org/docs/websites/website-blog.html)

### Markdown Reference
- [Quarto Markdown Basics](https://quarto.org/docs/authoring/markdown-basics.html)
- [Markdown Cheat Sheet](https://www.markdownguide.org/cheat-sheet/)

### GitHub Help
- [GitHub Pages Basics](https://docs.github.com/en/pages/getting-started-with-github-pages)
- [Git Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)

---

## 🎯 Assignment Requirements

Make sure your portfolio includes:

- [ ] Personalized home page with your information
- [ ] Complete "About" page
- [ ] Detailed resume with your education, skills, and experience
- [ ] At least 3 blog posts documenting your work
- [ ] Custom styling (feel free to modify `styles.css`)
- [ ] Working GitHub Pages deployment
- [ ] All placeholder text replaced with your actual content

---

## 💡 Tips for Success

1. **Start Early**: Don't wait until the last minute to set up your portfolio
2. **Document as You Go**: Write blog posts as you complete projects
3. **Make it Personal**: This is YOUR portfolio - make it reflect your interests
4. **Keep it Professional**: Remember, future employers might see this
5. **Update Regularly**: Add new projects and posts throughout the semester
6. **Ask for Help**: Use office hours if you get stuck
7. **Share Your Work**: Show your portfolio to classmates for feedback

---

## 📞 Getting Help

If you encounter issues:

1. Check the [Troubleshooting](#troubleshooting) section above
2. Review the [Quarto documentation](https://quarto.org/)
3. Ask questions in class or office hours
4. Post in the course discussion forum
5. Email Dr. Poulsen

Good luck with your portfolio! 🎓
