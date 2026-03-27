# Internal helper utilities -------------------------------------------------

#' Validate species labels
#'
#' Internal helper that checks whether species labels are valid.
#'
#' @param species Optional character vector of species labels.
#'
#' @return Invisibly returns `TRUE` when the input is valid.
#' @noRd
validate_species <- function(species = NULL) {
  allowed <- c("Con", "Hei", "Hep")

  if (is.null(species)) {
    return(invisible(TRUE))
  }

  if (!species %in% allowed) {
    stop("species must be one or more of: Con, Hei, Hep", call. = FALSE)
  }

  invisible(TRUE)
}

#' Validate analysis variable
#'
#' Internal helper that checks whether a variable name is one of the supported
#' quantitative variables.
#'
#' @param variable A character string naming the variable.
#'
#' @return A validated character string.
#' @noRd
validate_variable <- function(variable) {
  rlang::arg_match(variable, values = c("Width", "Angle"))
}
