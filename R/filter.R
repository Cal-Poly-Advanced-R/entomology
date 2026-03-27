#' Filter beetles by species
#'
#' Filters the beetles dataset to one or more species.
#'
#' @param species Optional character vector containing one or more of `"Con"`,
#'   `"Hei"`, and `"Hep"`.
#'
#' @return A tibble containing the filtered rows.
#'
#' @export
beetle_filter <- function(species = NULL) {

    if (is.null(species)) {
        beetle_data()
    } else {
        beetle_data() |>
          filter(Species %in% species)
    }
}
