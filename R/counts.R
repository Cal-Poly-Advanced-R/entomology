#' Count observations by species
#'
#' Counts the number of beetles in each species group.
#'
#' @return A tibble with columns `Species` and `Count`.
#'
#' @export
beetle_counts <- function() {
  beetle_data() |>
    dplyr::count(Species)
}
