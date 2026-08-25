# Intro to Data Science Portfolio Website

Welcome to your individual portfolio website assignment for **Intro to Data Science** at Washington College!

This website will host your blog posts as you "learn out loud," document your exploratory data analyses and visualizations using **R and the `tidyverse`**, and build an online portfolio of your course work for your grade.

---

## 🚀 Getting Started

1. **Accept the Assignment**: Follow the invitation link provided in **Classmoji** to create your personal repository.
2. **Open in GitHub Codespaces**:
   - In your new repository on GitHub, click the green **Code** button.
   - Select the **Codespaces** tab and click **Create codespace on main**.
3. **Follow the Setup Guide**: See **[STUDENT_GUIDE.md](STUDENT_GUIDE.md)** for detailed walkthrough instructions.

---

## 📚 Course Documentation

- **[Student Guide](STUDENT_GUIDE.md)** — Step-by-step instructions from setup to publishing on GitHub Pages.
- **[Quick Checklist](CHECKLIST.md)** — Milestone checklist to ensure your website is complete and ready for grading.
- **[R Setup Guide](R_SETUP.md)** — Guide for R and tidyverse packages in Codespaces.
- **[Quarto Reference](QUARTO_REFERENCE.md)** — Cheatsheet for Quarto formatting, R code options, and ggplot2 figures.
- **[GitHub Actions Guide](GITHUB_ACTIONS.md)** — Guide for automated builds and deployment.

---

## 📂 Repository Contents

- **`index.qmd`** — Home page welcoming visitors to your data science portfolio.
- **`blog.qmd`** — Blog listing page that aggregates all your posts in `posts/`.
- **`resume.qmd`** — Professional resume showcasing your education, skills, and coursework.
- **`about.qmd`** — About page sharing your background and academic interests.
- **`posts/`** — Folder containing your individual blog posts (includes `posts/first-post/` starter scaffold).
- **`templates/`** — Reusable blog post templates (`blog-post-template.qmd`) for new portfolio entries.
- **`install_packages.R`** — R script to install `tidyverse`, `knitr`, and supporting packages.
- **`_quarto.yml`** — Quarto site configuration file.
- **`styles.css`** — CSS stylesheet for custom styling and theme colors.

---

## ⚡ Quick Commands (Terminal)

```bash
# Verify Quarto and R environment
quarto check

# Preview your website locally in the browser
quarto preview

# Build your website to the docs/ directory
quarto render

# Commit and publish your updates
git add .
git commit -m "Update my portfolio"
git push origin main
```

---

## 🆘 Need Help?

- Check the troubleshooting section in **[STUDENT_GUIDE.md](STUDENT_GUIDE.md)** or **[R_SETUP.md](R_SETUP.md)**.
- Review the **[Quarto Reference](QUARTO_REFERENCE.md)**.
- [Book Office Hours with Dr. Poulsen](https://outlook.office.com/bookwithme/user/f78874d353574c549378ea832faf2ae7@washcoll.edu?anonymous&ep=plink).

---

## 🙏 Acknowledgments

This template uses the [quarto-codespaces](https://github.com/mcanouil/quarto-codespaces) devcontainer configuration by Mickaël Canouil. Built with [Quarto](https://quarto.org/) and [R Tidyverse](https://www.tidyverse.org/).
