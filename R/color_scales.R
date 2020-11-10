#' Color scale constructor for a color palette
#'
#' @param palette_name Character name of color palette
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param n Integer indicating the number of colors to return after interpolating the given colors in the palette
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @export
#'
scale_color_palette <- function(palette_name = "main", reverse = FALSE, discrete = TRUE, n, ...) {

  palette <- interpolate_color(palette = palette_name, reverse = reverse, n = n)

  if (discrete) {
    discrete_scale("colour",
                   scale_name = paste0(palette_name, "palette"),
                   palette = palette,
                   ...)
  } else {
    ggplot2::scale_color_gradientn(colours = palette, ...)
  }
}

#' Fill scale constructor for a color palette
#'
#' @param palette_name Character name of color palette s
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param n Integer indicating the number of colors to return after interpolating the given colors in the palette
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @export
#'
scale_fill_palette <- function(palette_name = "main", reverse = FALSE, discrete = TRUE, n = n, ...) {

  palette <- interpolate_color(palette = palette_name, reverse = reverse, n = n)

  if (discrete) {
    discrete_scale("fill",
                   scale_name = paste0(palette_name, "palette"),
                   palette = pal,
                   ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = palette, ...)
  }
}



