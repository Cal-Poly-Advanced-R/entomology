#' Convert beetle angle units to degrees
#'
#' The source dataset records angle in units of 7.5 degrees. This helper either
#' converts a numeric vector of angle values or returns converted angles for one
#' or more species.
#'
#' @param angle Optional numeric vector of angle values in dataset units.
#' @param species Optional character vector of species labels.
#'
#' @return A numeric vector of angles in degrees.
#'
#' @export
beetle_angle_degrees <- function(angle = NULL, species = NULL) {
  if (!is.null(angle) && !is.null(species)) {
    stop("Provide either angle or species, not both.", call. = FALSE)
  }

  if (!is.null(species)) {
    return(
      beetle_filter(species) |>
        dplyr::pull(.data$Angle) * 7
    )
  }

  if (is.null(angle)) {
    stop("Provide angle or species.", call. = FALSE)
  }

  angle * 7
}
