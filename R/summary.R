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
#' @importFrom dplyr summarize pull
#' @export
beetle_mean <- function(variable = Width,
                        species = NULL) {

  variable <- validate_variable(variable)

  beetle_filter(species) |>
    summarize(value = mean(.data[[variable]])) |>
    pull(value)
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
#' @importFrom dplyr summarize pull
#' @export
beetle_sd <- function(variable = Width,
                      species = NULL) {

  variable <- validate_variable(variable)

  beetle_filter(species) |>
    summarize(value = sd(.data[[variable]]) |>
    pull(value)
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
#' @importFrom dplyr summarize pull
#' @export
beetle_range <- function(variable = Width,
                         species = NULL) {

  variable <- validate_variable(variable)

  beetle_filter(species) |>
    summarize(
      min = min(.data[[variable]]),
      max = max(.data[[variable]])
    ) |>
    unlist()
}
