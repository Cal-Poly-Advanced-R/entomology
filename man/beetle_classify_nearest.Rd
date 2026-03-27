\name{beetle_classify_nearest}
\alias{beetle_classify_nearest}
\title{Classify a beetle by nearest centroid}
\usage{beetle_classify_nearest(width, angle)}
\arguments{\item{width}{A numeric width value.}\item{angle}{A numeric angle value.}}
\value{A single species label.}
\description{Predicts a species label by comparing a new point to the centroid of each species and selecting the nearest one.}
