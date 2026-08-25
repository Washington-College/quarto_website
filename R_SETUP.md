# R Package Setup & Troubleshooting Guide

This guide helps you set up and troubleshoot R and the `tidyverse` for your Intro to Data Science portfolio website.

---

## 🚀 Automatic Setup (GitHub Codespaces)

When you open this repository in **GitHub Codespaces**, the devcontainer automatically runs `install_packages.R` to install:
- `tidyverse` (`ggplot2`, `dplyr`, `tidyr`, `readr`, `tibble`, `purrr`, `stringr`, `forcats`)
- `knitr` & `rmarkdown` (required by Quarto to render R code)
- `httpgd` (for interactive plotting)

---

## 📦 Manual Installation / Reinstallation

If you ever need to install or update R packages manually in the terminal:

### Option 1: Run the helper script (Recommended)
In the terminal, run:
```bash
Rscript install_packages.R
```

### Option 2: Install directly in R
In the terminal, open an R console or run:
```bash
R -e 'install.packages(c("tidyverse", "knitr", "rmarkdown"), repos="https://cloud.r-project.org")'
```

---

## 🔍 Verifying Your R Setup

To test that R and the `tidyverse` are working properly with Quarto:

1. In the terminal, run:
   ```bash
   R -e 'library(tidyverse); message("✓ Tidyverse is installed and ready!")'
   ```
2. Test Quarto's R engine:
   ```bash
   quarto check
   ```
   You should see a checkmark `[✓]` next to **Checking R installation** and **Checking Knitr engine render**.

---

## 🔧 Common Issues & Fixes

### Issue: `there is no package called 'tidyverse'`
**Cause:** The package has not been installed into your current R library.  
**Fix:** Run:
```bash
Rscript install_packages.R
```

### Issue: Quarto says `knitr engine not found`
**Cause:** `knitr` and `rmarkdown` are needed to process `{r}` chunks in `.qmd` files.  
**Fix:** In the terminal, run:
```bash
R -e 'install.packages(c("knitr", "rmarkdown"), repos="https://cloud.r-project.org")'
```

### Issue: Plot doesn't appear in the rendered document
**Cause:** The code chunk might have `#| eval: false` or a syntax error in the ggplot call.  
**Fix:** 
1. Check that your code chunk starts with ````{r}`.
2. Ensure you have `library(tidyverse)` or `library(ggplot2)` loaded.
3. Make sure `#| eval: true` (or leave out `eval` since it defaults to `true`).
4. Run `quarto render posts/my-post/index.qmd` in the terminal to inspect any error messages.
