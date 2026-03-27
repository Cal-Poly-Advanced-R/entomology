\name{beetle_range}
\alias{beetle_range}
\title{Compute the range of a beetle measurement}
\usage{beetle_range(variable = c("Width", "Angle"), species = NULL)}
\arguments{\item{variable}{One of \code{"Width"} or \code{"Angle"}.}\item{species}{Optional character vector of species labels.}}
\value{A numeric vector of length 2 containing the minimum and maximum.}
\description{Computes the minimum and maximum of \code{Width} or \code{Angle}, optionally within one or more species.}
