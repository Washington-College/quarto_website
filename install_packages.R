# R Package Installer for Intro to Data Science Portfolio
# Run this script to ensure all required R packages are installed:
# Rscript install_packages.R

required_packages <- c(
  "tidyverse",    # ggplot2, dplyr, tidyr, readr, purrr, tibble, stringr, forcats
  "knitr",        # Dynamic report generation
  "rmarkdown",    # Document conversion
  "httpgd"        # High-performance graphics device for VS Code/Codespaces
)

cat("Checking and installing required R packages...\n")

installed <- rownames(installed.packages())

for (pkg in required_packages) {
  if (!pkg %in% installed) {
    cat(sprintf("Installing package: %s\n", pkg))
    install.packages(pkg, repos = "https://cloud.r-project.org", quiet = FALSE)
  } else {
    cat(sprintf("✓ %s is already installed.\n", pkg))
  }
}

cat("\nAll required R packages are ready!\n")
