#' Classify a beetle by nearest centroid
#'
#' Predicts a species label by comparing a new `(width, angle)` pair to the
#' centroid of each species and selecting the nearest one.
#'
#' @param width A numeric width value.
#' @param angle A numeric angle value.
#'
#' @return A single species label.
#'
#' @importFrom dplyr mutate slice_min pull
#' @export
beetle_classify_nearest <- function(width, angle) {
  centroids <- beetle_species() |>
    purrr::map(beetle_centroid) |>
    list_rbind()

  centroids |>
    mutate(
      distance = sqrt((width - Width) + (angle - Angle))
    ) |>
    slice_min(distance, n = 1, with_ties = FALSE) |>
    pull(Species)
}
