# from https://github.com/rstudio/bookdown/blob/master/R/utils.R
tisemdown_file <- function(...) {
  system.file(..., package = 'tisemdown', mustWork = TRUE)
}

# from https://github.com/rstudio/bookdown/blob/master/R/skeleton.R
tisemdown_skeleton <- function(path = getwd()) {

  # ensure directory exists
#  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # copy 'resources' folder to path
  resources <- tisemdown_file('rstudio', 'templates', 'project', 'resources')

  R.utils::copyDirectory(from = resources,
                         to = path,
                         recursive = TRUE)
}
