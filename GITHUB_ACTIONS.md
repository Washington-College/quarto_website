# Optional GitHub Actions Deployment

By default, this assignment is designed for **manual branch deployment**:
1. Run `quarto render` in your terminal
2. Commit and push the `docs/` folder
3. Enable GitHub Pages to serve from the `/docs` folder on branch `main`

However, if you or your instructor prefer **automated CI/CD deployment**, you can enable the included GitHub Actions workflow.

---

## How GitHub Actions Works with R & Tidyverse

The workflow file at `.github/workflows/publish.yml` is configured to:
1. Spin up a clean Ubuntu Linux virtual machine
2. Install **R** using `r-lib/actions/setup-r@v2`
3. Install required R dependencies (`tidyverse`, `knitr`, `rmarkdown`) using `r-lib/actions/setup-r-dependencies@v2`
4. Set up **Quarto CLI**
5. Execute `quarto render` to build all `.qmd` documents and execute R code chunks
6. Deploy the generated `docs/` directory directly to GitHub Pages

---

## Enabling GitHub Actions Deployment

### Step 1: Configure GitHub Pages for Actions
1. Navigate to your repository on GitHub.
2. Click **Settings** → **Pages** (in the left sidebar).
3. Under **Build and deployment > Source**, select **GitHub Actions** (instead of "Deploy from a branch").

### Step 2: Ensure Workflow Permissions Are Set
1. In your repository, click **Settings** → **Actions** → **General**.
2. Scroll to the bottom to **Workflow permissions**.
3. Select **Read and write permissions**.
4. Click **Save**.

### Step 3: Push Your Changes
Whenever you push commits to `main`:
```bash
git add .
git commit -m "Add new blog post"
git push origin main
```
GitHub Actions will automatically build and publish your site! You can monitor build progress under the **Actions** tab on GitHub.

---

## Switching Back to Branch Deployment (/docs)

If you wish to switch back to manual branch deployment:
1. Go to **Settings** → **Pages**.
2. Under **Source**, select **Deploy from a branch**.
3. Choose Branch: `main`, Folder: `/docs`.
4. Click **Save**.
