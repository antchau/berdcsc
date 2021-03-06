% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/color_scales.R
\name{scale_color_palette}
\alias{scale_color_palette}
\title{Color scale constructor for a color palette}
\usage{
scale_color_palette(
  palette_name = "main",
  reverse = FALSE,
  discrete = TRUE,
  n,
  ...
)
}
\arguments{
\item{palette_name}{Character name of color palette}

\item{reverse}{Boolean indicating whether the palette should be reversed}

\item{discrete}{Boolean indicating whether color aesthetic is discrete or not}

\item{n}{Integer indicating the number of colors to return after interpolating the given colors in the palette}

\item{...}{Additional arguments passed to discrete_scale() or
scale_color_gradientn(), used respectively when discrete is TRUE or FALSE}
}
\description{
Color scale constructor for a color palette
}
