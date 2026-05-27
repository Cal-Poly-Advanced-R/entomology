#' Compute a species centroid
#'
#' Computes the mean width and mean angle for a single species.
#'
#' @param species A single species label.
#'
#' @return A named numeric vector with elements `Species`, `Width`, and `Angle`.
#'
#' @export
beetle_centroid <- function(species) {
  validate_species(species)

  if (length(species) != 1L) {
    stop("species must be a single value.")
  }


  dat <- beetle_filter(species)

  Width <- mean(dat$Width)
  Angle <- mean(dat$Angle)
}
