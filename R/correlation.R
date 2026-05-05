#' Correlation between width and angle
#'
#' Computes the Pearson correlation between width and angle, optionally
#' within one or more species.
#'
#' @param species Optional character vector of species labels.
#'
#' @return A numeric scalar.
#'
#' @export
beetle_correlation <- function(species = NULL) {
  dat <- beetle_filter(species)
  cor(dat$width, dat$angle)
}
