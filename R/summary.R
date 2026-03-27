#' Compute the mean of a beetle measurement
#'
#' Computes the arithmetic mean of `Width` or `Angle`, optionally within one or
#' more species.
#'
#' @param variable One of `Width` or `Angle`.
#' @param species Optional character vector of species labels.
#'
#' @return A numeric scalar.
#'
#' @export
beetle_mean <- function(variable = Width, species = NULL) {
  variable <- validate_variable(variable)

  beetle_filter(species) |>
    dplyr::summarise(value = mean({{variable}})) |>
    dplyr::pull(value)
}

#' Compute the standard deviation of a beetle measurement
#'
#' Computes the sample standard deviation of `Width` or `Angle`, optionally
#' within one or more species.
#'
#' @inheritParams beetle_mean
#'
#' @return A numeric scalar.
#'
#' @export
beetle_sd <- function(variable = Width, species = NULL) {
  variable <- validate_variable(variable)

  beetle_filter(species) |>
    dplyr::summarise(value = sd({{variable}}) |>
    dplyr::pull(value)
}

#' Compute the range of a beetle measurement
#'
#' Computes the minimum and maximum of `Width` or `Angle`, optionally within one
#' or more species.
#'
#' @inheritParams beetle_mean
#'
#' @return A numeric vector of length 2 containing the minimum and maximum.
#'
#' @export
beetle_range <- function(variable = Width, species = NULL) {
  variable <- validate_variable(variable)

  beetle_filter(species) |>
    dplyr::summarise(
      min = min({{variable}}),
      max = max(variable)
    ) |>
    unlist(use.names = FALSE)
}
