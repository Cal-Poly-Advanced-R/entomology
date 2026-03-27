#' Load the flea beetles dataset
#'
#' Reads the beetles dataset shipped with the package and returns it as a tibble.
#'
#' @return A tibble with columns `Width`, `Angle`, and `Species`.
#'
#' @examples
#' beetle_data()
#'
#' @export
beetle_data <- function() {
  path <- system.file("extdata", "beetles.csv", package = "entomology")

  readr::read_csv(path, show_col_types = FALSE) |>
    dplyr::mutate(
      Species = factor(Species, levels = c("Con", "Hei", "Hep"))
    )
}

#' List available species labels
#'
#' Returns the species abbreviations used in the beetles dataset.
#'
#' @return A character vector of species labels.
#'
#' @examples
#' beetle_species()
#'
#' @export
beetle_species <- function() {
  beetle_data() |>
    dplyr::distinct(Species) |>
    dplyr::select(Species) |>
    as.character()
}
