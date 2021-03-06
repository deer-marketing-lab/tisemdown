
<!-- README.md is generated from README.Rmd via `devtools::build_readme()`. Please edit README.Rmd -->

# tisemdown <img src="man/figures/tisemdown_hex.png" align="right" width=200 />

[![Actions Status:
master](https://github.com/deer-marketing-lab/tisemdown/workflows/renderbook/badge.svg)](https://github.com/deer-marketing-lab/tisemdown/actions?query=workflow%3A%22renderbook%22)
[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![lifecycle](https://img.shields.io/badge/version-0.2.0-red.svg)]()

This project provides a RMarkdown template to support Tilburg School of
Economics and Management students to adhere to thesis formatting
guidelines for their Masters Thesis.

## Quick Start Guide

### Pre-requisite Packages

{tisemdown} builds PDF files from R Markdown documents using LaTeX. You
need to make sure that LaTeX and R Markdown are installed on your PC. To
do this:

-   Open RStudio
-   Enter the following lines into the console and press `RETURN`:

``` r
install.packages(c('tinytex', 'rmarkdown', 'bookdown'))
# below installs latex
tinytex::install_tinytex()
# after restarting RStudio, confirm that you have LaTeX with
tinytex:::is_tinytex()
```

### Install `tisemdown`

`tisemdown` is installed from GitHub:

``` r
if (!require("remotes")) 
  install.packages("remotes", repos = "https://cran.rstudio.org")
  remotes::install_github("deer-marketing-lab/tisemdown")
```

**Note that you will need to restart RStudio at this point before going
to the next step.**

### Getting Started with the {tisemdown} template.

Follow these steps:

-   Create a new RStudio project with a {tisemdown} template.
    -   In RStudio, click on **File** &gt; **New Project** &gt; **New
        Directory**.
    -   Then select **Thesis Project using tisemdown** from the
        dropdown. It will be near the bottom.
        -   HINT: You’ll see the graduation cap as the icon on the left
            for the appropriate project type.

<!-- NOTE: UPDATE THIS IMAGE (FIXME!) -->

![](https://raw.githubusercontent.com/deer-marketing-lab/tisemdown/master/docs/reference/figures/tisemdown_proj.png)

-   Next, give your project a name and specify where you’d like the
    files to appear. In the screenshot below, the project name is
    `my_thesis` and it will appear as a new folder on my Desktop.

![](https://raw.githubusercontent.com/deer-marketing-lab/tisemdown/master/docs/reference/figures/tisemdown_proj_name.png)

4.  After choosing which type of output you’d like in the YAML at the
    top of `index.Rmd`, **Knit** the `index.Rmd` file to get the book in
    PDF or HTML formats. The PDF file of your thesis will be deposited
    in the `_book/` directory, by default.

5.  To add new chapters, edit existing- or create new Rmd files with
    your thesis content

## Going Further

### Day-to-day writing of your thesis

You need to edit the individual chapter R Markdown files to write your
thesis. It’s recommended that you version control your thesis using
GitHub if possible. RStudio can also easily sync up with GitHub to make
the process easier. While writing, you should `git commit` your work
frequently, after every major activity on your thesis. For example,
every few paragraphs or section of text, and after major step of
analysis development. You should `git push` at the end of each work
session before you leave your computer or change tasks. For a gentle,
novice-friendly guide to getting starting with using Git with R and
RStudio, see <https://happygitwithr.com/>.

### Rendering different formats

To render your thesis into a PDF, open `index.Rmd` in RStudio and then
click the “knit” button. To change the output formats between PDF,
gitbook and Word, look at the `output:` field in `index.Rmd` and
comment-out the formats you don’t want.

The knitted file of your thesis will be deposited in the `_book/`
directory, by default.

## Directories and Files within the Template

The following components are ones you should edit to customize your
thesis:

### `index.Rmd`

This file contains all the meta information that goes at the beginning
of your document. You’ll need to edit the top portion of this file (the
YAML) to put your name on the first page, the title of your thesis, etc.
Note that you need to have at least one chapter start in the `index.Rmd`
file for the build to work. For the template, this is done with
`# Introduction` in the example from the template.

### `01-chap1.Rmd`, `02-chap2.Rmd`, etc.

These are the Rmd files for each chapter in your dissertation. Write
your thesis in these. If you’re writing in RStudio, you may find the
[wordcount addin](https://github.com/benmarwick/wordcountaddin) useful
for getting word counts and readability statistics in R Markdown
documents.

### `bib/`

Store your bibliography (as bibtex files) here. We recommend using the
[citr addin](https://github.com/crsh/citr) and
[Zotero](https://www.zotero.org/) to efficiently manage and insert
citations.

### `csl/`

Specific style files for bibliographies should be stored here. A good
source for citation styles is
<https://github.com/citation-style-language/styles#readme>.

### `figure/` and `data/`

Store your figures and data here and reference them in your R Markdown
files. See the [bookdown book](https://bookdown.org/yihui/bookdown/) for
details on cross-referencing items using R Markdown.

### `_bookdown.yml`

This is the main configuration file for your thesis. You can change the
name of your outputted file here for your thesis and other options about
your thesis here.

**Generally, I wouldn’t change this file**

## Extra Info

Currently, the PDF and gitbook versions are fully-functional. The word
and epub versions are developmental, have no templates behind them, and
are essentially calls to the appropriate functions in bookdown.

Under the hood, the a LaTeX template is used to ensure that documents
conform precisely to submission standards. At the same time, composition
and formatting can be done using lightweight
[markdown](https://rmarkdown.rstudio.com/authoring_basics.html) syntax,
and **R** code and its output can be seamlessly included using
[rmarkdown](https://rmarkdown.rstudio.com).

## Extra LateX Packages?

You may need to install a few extra LaTeX packages as your thesis
develops. Here is one such example of how to do so:

``` r
tinytex::tlmgr_install("babel-portuges")
```

## Acknowledgements

This project was inspired by the
[thesisdown](https://github.com/ismayc/thesisdown) and
[bookdown](https://github.com/rstudio/bookdown) packages.
