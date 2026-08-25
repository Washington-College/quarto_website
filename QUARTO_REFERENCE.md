# Quarto Quick Reference (Intro to Data Science)

A quick reference cheatsheet for Quarto commands, markdown formatting, and R / tidyverse code execution.

---

## 🔧 Essential Terminal Commands

| Command | What it does |
|---|---|
| `quarto check` | Verifies your Quarto, R, and Knitr installation |
| `quarto preview` | Launches a live local browser preview of your website |
| `quarto render` | Builds your full website into the `docs/` directory |
| `quarto render posts/my-post/index.qmd` | Renders an individual document to test for errors |
| `quarto --help` | Displays help and options for any Quarto command |

---

## 📝 YAML Frontmatter Example

At the very top of each `.qmd` file:

```yaml
---
title: "Exploring Data with ggplot2"
author: "Your Name"
date: "2026-02-15"
categories: [R, tidyverse, visualization]
image: "image.jpg"
draft: false
format:
  html:
    toc: true
    code-fold: false
---
```

---

## 💻 R Code Chunks with Tidyverse

### Basic R Chunk with `ggplot2`
````markdown
```{{r}}
#| label: fig-mpg-plot
#| echo: true
#| warning: false
#| message: false
#| fig-cap: "Fuel efficiency vs engine displacement in cars"

library(tidyverse)

ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point(size = 3, alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "Engine Size vs Highway MPG",
    x = "Engine Displacement (L)",
    y = "Highway MPG",
    color = "Vehicle Class"
  ) +
  theme_minimal()
```
````

### Data Wrangling with `dplyr` & Pipe (`|>`)
````markdown
```{{r}}
#| label: tbl-summary
#| echo: true

mpg |>
  group_by(class) |>
  summarize(
    mean_hwy = mean(hwy, na.rm = TRUE),
    mean_cty = mean(cty, na.rm = TRUE),
    n = n()
  ) |>
  arrange(desc(mean_hwy))
```
````

---

## ⚙️ R Code Chunk Options

Place options inside the code block right at the top using `#|`:

| Option | Values | Purpose |
|---|---|---|
| `#| echo: true / false` | `true`, `false` | Shows or hides the R source code in the output |
| `#| eval: true / false` | `true`, `false` | Runs or skips executing the code chunk |
| `#| warning: false` | `true`, `false` | Hides R warnings from the rendered page |
| `#| message: false` | `true`, `false` | Hides R package startup messages |
| `#| code-fold: true` | `true`, `false`, `show` | Makes code collapsible for readability |
| `#| fig-cap: "..."` | string | Adds a figure caption |
| `#| fig-width: 8` | number | Controls figure width in inches |
| `#| fig-height: 5` | number | Controls figure height in inches |

---

## ✍️ Markdown Basics

```markdown
# Header 1
## Header 2
### Header 3

**Bold text**
*Italic text*
~~Strikethrough~~

[Link text](https://example.com)
![Image caption](path/to/image.jpg)

- Bullet point item
  - Indented sub-bullet

1. Numbered item 1
2. Numbered item 2

> Blockquote for quotes or reflections.
```

---

## 📦 Callout Blocks

```markdown
::: {.callout-note}
This is a helpful note callout.
:::

::: {.callout-tip}
## Helpful Tip
Share an insight or shortcut you learned while coding!
:::

::: {.callout-warning}
Watch out for NA values or column type mismatches!
:::

::: {.callout-important}
Remember to render before pushing to GitHub.
:::
```

---

## 📐 Math Equations (LaTeX)

Inline math: `$y = \beta_0 + \beta_1 x_1 + \epsilon$`

Display equation:
```markdown
$$
\bar{x} = \frac{1}{n} \sum_{i=1}^n x_i
$$
```

---

## 🌐 Helpful Resources
- [Quarto Official Documentation](https://quarto.org/docs/guide/)
- [R for Data Science (2e)](https://r4ds.hadley.nz/)
- [ggplot2 Reference](https://ggplot2.tidyverse.org/reference/)
- [dplyr Reference](https://dplyr.tidyverse.org/reference/)
