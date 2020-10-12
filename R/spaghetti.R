#' Spaghetti plot
#'
#' Display a spaghetti plot using the ggplot2 engine.
#'
#' @param df A data frame
#' @param x_var X-variable. Specify as symbol
#' @param x_type Type of X-variable. Two options: continuous or factor
#' @param group_var Grouping variable. Specify as symbol.
#' @param y_var Y-variable. Specify as symbol
#' @param x_lab Label for x-axis
#' @param y_lab Label for x-axis
#' @param title Title of the plot
#' @param alpha  Transparency of the background individual lines. 0 is invisible and 1 is normal.
#' @param ... Additional arguments to aesthetic specification of ggplot
#'
#' @return ggplot plot object
#' @export
#'
#' @examples spaghetti(df = df, x_var = time, y_var = volume, group_var = participant_id)
spaghetti <- function(df,
                      x_var,
                      x_type,
                      group_var,
                      y_var,
                      x_lab = "",
                      y_lab = "",
                      title = "",
                      alpha = 1,
                      color = "gray",
                      size = 1,
                      ...) {


  x_var<- rlang::enquo(x_var)
  group_var <- rlang::enquo(group_var)
  y_var <- rlang::enquo(y_var)


  p <-
    ggplot2::ggplot(data = df, ggplot2::aes(x = !!x_var,
                                            y = !!y_var,
                                            group = !!group_var)) +
    ggplot2::geom_line(alpha = alpha,
                       color = color,
                       size = size,
                       ...) +
    ggplot2::labs(x = x_lab,
                  y = y_lab,
                  title = title)

  return(p)

}
