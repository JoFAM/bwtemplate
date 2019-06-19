#' R Markdown output format for exercises
#'
#' This format is based on \code{rmarkdown::pdf_document()}, with a
#' custom Pandox LaTeX template. It adapts a number of default values
#' for some of its arguments (eg, \code{keep_tex = TRUE}).
#'
#' @param ... arguments passed to \code{\link[rmarkdown]{pdf_document}()}
#' @inheritParams rmarkdown::pdf_document
#'
#' @return An R Markdown output format.
#'
#' @examples
#' \dontrun{
#' rmarkdown::draft("MyArticle.Rmd", template = "bw_exercise",
#'                   package = "bwtemplate")
#' }
#' @export
bw_exercise <- function(..., keep_tex = TRUE){
  pdf_document_format("bw_exercise", ..., keep_tex = keep_tex)
}
