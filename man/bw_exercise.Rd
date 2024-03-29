% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bw_exercise.R
\name{bw_exercise}
\alias{bw_exercise}
\title{R Markdown output format for exercises}
\usage{
bw_exercise(..., keep_tex = TRUE)
}
\arguments{
\item{...}{arguments passed to \code{\link[rmarkdown]{pdf_document}()}}

\item{keep_tex}{Keep the intermediate tex file used in the conversion to PDF}
}
\value{
An R Markdown output format.
}
\description{
This format is based on \code{rmarkdown::pdf_document()}, with a
custom Pandox LaTeX template. It adapts a number of default values
for some of its arguments (eg, \code{keep_tex = TRUE}).
}
\examples{
\dontrun{
rmarkdown::draft("MyArticle.Rmd", template = "bw_exercise",
                  package = "bwtemplate")
}
}
