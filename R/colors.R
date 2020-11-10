#' Return UCI colors
#'
#' @return A named vector of UCI color names with corresponding hex codes
#' @export
#'
#' @examples
#' uci_colors()
uci_colors <- function(){

  colors <- c(
  "uci-blue" = "#0064A4",
  "uci-gold" = "#FFD200",
  "light-blue" = "#6AA2B8",
  "light-gray" = "#C6BEB5",
  "dark-blue" = "#1B3D6D",
  "orange" = "#F78D2D",
  "light-yellow" = "#F7EB5F",
  "dark-gray" = "#555759",
  "lime-green" = "#94C83D"
  )

  return(colors)
}

#' Extract UCI colors as hex codes.
#'
#' Default to return all colors from UCI color palette
#'
#' @param ... Character names of colors
#'
#' @return A named vector of colors with corresponding hex code
#' @export
#'
#' @examples
#' get_hex_color()
#' get_hex_color("uci-gold", "lime-green")
get_hex_color <- function(...){
  color_names <- c(...)

  if(is.null(color_names)){
    return(uci_colors())
  }

  return(uci_colors()[color_names])
}


#' Create color palettes
#'
#' @param ... Character names of colors
#'
#' @return A list of named vectors. Each vector is a color palette with each element containing the
#' color name and corresponding hex code
#' @export
#'
#' @examples
#' create_color_palette()
#' create_color_palette(...)
get_color_palette <- function(...){

  palette <- c(...)

  berdcsc_palettes <- list(
    main = get_hex_color("uci-blue", "uci-gold"),
    light = get_hex_color("uci-gold", "light-gray", "orange"),
    dark = get_hex_color("uci-blue", "light-gray", "orange") # i like it
  )

  if(is.null(palette)){
    return(berdcsc_palettes)
  }

  return(palette)

}


#' Interpolate colors
#'
#' @param palette_name Character name of the color palette
#' @param reverse Boolean indicating whether to reverse palette
#' @param n Integer indicating the number of colors to return after interpolating the given colors in the palette
#' @param ... Additional arguments to colorRampPalette()
#'
#' @return A character vector of length n that contains colors interpolated from the palette
#' @export
#'
#' @examples
#' interpolate_color(get_color_palette())
interpolate_color <- function(palette_name = "main", reverse = FALSE, n , ...){

  if(!hasArg(n)){
    stop("Please supply a value for n, the number of colors to return after interpolation")
  }

  palette <- get_color_palette()[[palette_name]]

  if(reverse) {
    palette <- rev(palette)
  }

  return(grDevices::colorRampPalette(palette, ...)(n))

}

