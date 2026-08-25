# R Package Installer for Intro to Data Science Portfolio
# Run this script to ensure all required R packages are installed:
# Rscript install_packages.R

# On Linux (Codespaces/Ubuntu), use Posit Public Package Manager for precompiled binaries (fast install)
if (Sys.info()["sysname"] == "Linux") {
  options(repos = c(CRAN = "https://packagemanager.posit.co/cran/__linux__/jammy/latest"))
} else {
  options(repos = c(CRAN = "https://cloud.r-project.org"))
}

required_packages <- c(
  "tidyverse",    # ggplot2, dplyr, tidyr, readr, purrr, tibble, stringr, forcats
  "knitr",        # Dynamic report generation
  "rmarkdown",    # Document conversion
  "httpgd"        # High-performance graphics device for VS Code/Codespaces
)

cat("Checking required R packages...\n")

installed <- rownames(installed.packages())
missing_packages <- required_packages[!required_packages %in% installed]

if (length(missing_packages) > 0) {
  cat(sprintf("Installing missing packages: %s\n", paste(missing_packages, collapse = ", ")))
  install.packages(missing_packages, quiet = TRUE)
}

for (pkg in required_packages) {
  if (pkg %in% rownames(installed.packages())) {
    cat(sprintf("✓ %s is ready.\n", pkg))
  } else {
    cat(sprintf("✗ %s failed to install.\n", pkg))
  }
}

cat("\nAll required R packages are verified!\n")
