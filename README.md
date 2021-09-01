
<!-- README.md is generated from README.Rmd via `devtools::build_readme()`. Please edit README.Rmd -->

# tisemdown <img src="man/figures/tisemdown_hex.png" align="right" width=200 />

This project is a modified version Chester Ismay’s {thesisdown} package
to provide support for Tilburg School of Economics and Management
Students to adhere to thesis formatting guidelines for their Masters
Thesis.

This project provides a template for writing a thesis in R Markdown, and
rendering those files into a PDF.  
This project was inspired by the
[thesisdown](https://github.com/ismayc/thesisdown) and
[bookdown](https://github.com/rstudio/bookdown) packages.

Currently, the PDF and gitbook versions are fully-functional. The word
and epub versions are developmental, have no templates behind them, and
are essentially calls to the appropriate functions in bookdown.

If you are new to working with `bookdown`/`rmarkdown`, please read over
the documentation available in the `gitbook` template at
<https://ismayc.github.io/thesisdown_book>.

Under the hood, the a LaTeX template is used to ensure that documents
conform precisely to submission standards. At the same time, composition
and formatting can be done using lightweight
[markdown](https://rmarkdown.rstudio.com/authoring_basics.html) syntax,
and **R** code and its output can be seamlessly included using
[rmarkdown](https://rmarkdown.rstudio.com).

### Using `tisemdown` from Deer Marketing Labs’s GitHub

Using {tisemdown} has some prerequisites which are described below. To
compile PDF documents using **R**, you are going to need to have LaTeX
installed. By far the easiest way to install LaTeX on any platform is
with the [tinytex](https://yihui.name/tinytex/) R package:

``` r
install.packages(c('tinytex', 'rmarkdown'))
tinytex::install_tinytex()
# after restarting RStudio, confirm that you have LaTeX with
tinytex:::is_tinytex()
```

You may need to install a few extra LaTeX packages on your first attempt
to knit as well. Here is one such example of how to do so:

``` r
tinytex::tlmgr_install("babel-portuges")
```

To use {thesisdown} from
[RStudio](https://www.rstudio.com/products/rstudio/download/):

1.  Ensure that you have already installed LaTeX, and are using the
    latest version of
    [RStudio](https://www.rstudio.com/products/rstudio/download/). You
    can use `thesisdown` without RStudio. For example, you can write the
    Rmd files in your favorite text editor
    (e.g. [Atom](https://atom.io/),
    [Notepad++](https://notepad-plus-plus.org/)). But RStudio is
    probably the easiest tool for writing both R code and text in your
    thesis. It also provides a nice way to build your thesis while
    editing. We’ll proceed assuming that you have decided to use the
    RStudio workflow.

2.  Install the {bookdown} and {tisemdown} packages. Note that
    {tisemdown} is not available on CRAN at the moment and that’s why
    `install.packages("thesisdown")` won’t work. Use
    `remotes::install_github()` as shown below instead to install the
    package.

    ``` r
    if (!require("remotes")) 
      install.packages("remotes", repos = "https://cran.rstudio.org")
    remotes::install_github("rstudio/bookdown")
    remotes::install_github("deer-marketing-lab/tisemdown")
    ```

          **Note that you will need to restart RStudio at this point for
the following dialog to show up.**

3.  Get started with the {tisemdown} template. Follow these steps:

-   Create a new RStudio project with a {thesisdown} template.

    In RStudio, click on **File** &gt; **New Project** &gt; **New
    Directory**. Then select **Thesis Project using tisemdown** from the
    dropdown that will look something like the image below. You’ll see
    the graduation cap as the icon on the left for the appropriate
    project type.

<!-- NOTE: UPDATE THIS IMAGE (FIXME!) -->
<!-- ![](https://raw.githubusercontent.com/ismayc/thesisdown/master/docs/reference/figures/thesis_proj.png) -->

-   Next, give your project a name and specify where you’d like the
    files to appear. In the screenshot below, the project name is
    `my_thesis` and it will appear as a new folder on my Desktop.

![](https://raw.githubusercontent.com/ismayc/thesisdown/master/docs/reference/figures/thesis_proj_name.png)

4.  After choosing which type of output you’d like in the YAML at the
    top of `index.Rmd`, **Knit** the `index.Rmd` file to get the book in
    PDF or HTML formats.

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

## Rendering

To render your thesis into a PDF, open `index.Rmd` in RStudio and then
click the “knit” button. To change the output formats between PDF,
gitbook and Word, look at the `output:` field in `index.Rmd` and
comment-out the formats you don’t want.

The PDF file of your thesis will be deposited in the `_book/` directory,
by default.

## Components

The following components are ones you should edit to customize your
thesis:

### `_bookdown.yml`

This is the main configuration file for your thesis. You can change the
name of your outputted file here for your thesis and other options about
your thesis here.

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
