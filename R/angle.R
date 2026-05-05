#' Convert beetle angle units to degrees
#'
#' The source dataset records angle in units of 7.5 degrees. This helper
#' converts a numeric vector of angle values.
#'
#' @param angle Numeric vector of angle values in dataset units.
#'
#' @return A numeric vector of angles in degrees.
#'
#' @export
convert_angle_degrees <- function(angle) {

  angle * 7

}
