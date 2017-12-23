#' Output formats for Monash EBS documents
#'
#' Each function is a wrapper for \code{\link[bookdown]{pdf_document2}} to
#' produce documents in Monash EBS style.
#'
#' @param \dots Arguments passed to \code{\link[bookdown]{pdf_document2}}.
#'
#' @return An R Markdown output format object.
#'
#' @author Rob J Hyndman
#'
#' @export
letter <- function(...) {
  template <- system.file("rmarkdown/templates/Letter/resources/monashletter.tex",
                          package="MonashEBSTemplates")
   bookdown::pdf_document2(...,
     template = template
   )
}

#' @rdname letter
#' @export
exam <- function(...) {
  template <- system.file("rmarkdown/templates/Exam/resources/examtemplate.tex",
                          package="MonashEBSTemplates")
  bookdown::pdf_document2(...,
                          template = template
  )
}


#' @rdname letter
#' @export
workingpaper <- function(...) {
  template <- system.file("rmarkdown/templates/WorkingPaper/resources/monashwp.tex",
                          package="MonashEBSTemplates")
  bookdown::pdf_document2(...,
                          template = template
  )
}


#' @rdname letter
#' @export
report <- function(...) {
  template <- system.file("rmarkdown/templates/Report/resources/monashreport.tex",
                          package="MonashEBSTemplates")
  bookdown::pdf_document2(...,
                          template = template
  )
}

