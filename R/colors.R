#' Return UCI colors
#'
#' @return A named vector of UCI color names with corresponding hex code
#' @export
#'
#' @examples
#' uci_colors()
uci_colors <- function(){

  colors <- c(
  "uci-blue" = "#0064A4",
  "uci-gold" = "#FFD200",
  "light-blue" = "6AA2B8",
  "light-gray" = "C6BEB5",
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
