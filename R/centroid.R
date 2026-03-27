#' Compute a species centroid
#'
#' Computes the mean width and mean angle for a single species.
#'
#' @param species A single species label.
#'
#' @return A named numeric vector with elements `Width` and `Angle`.
#'
#' @export
beetle_centroid <- function(species) {
  validate_species(species)

  if (length(species) != 1L) {
    stop("species must be a single value.", call. = FALSE)
  }

  beetle_filter(species) |>
    dplyr::summarise(
      Width = mean(Width),
      Angle = mean(Angle)
    )
}
