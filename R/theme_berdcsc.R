#' Add berdcsc theme to ggplot2 object
#'
#' This function allows you to add the berdcsc theme to your ggplot2 graphics
#'
#' @param base_size Maximum font size in the plot. Smaller font sizes are computed relative to the
#' base size
#'
#' @export
#' @examples
#' line <- ggplot(line_df, aes(x = year, y = BP)) +
#' geom_line(colour = "#007f7f", size = 1) +
#' geom_hline(yintercept = 0, size = 1, colour="#333333") +
#' theme_berdcsc()

theme_berdcsc <- function(base_size = 20, font = "sans") {

  # Color Palette from Official UCI Brand
  colors <- c("uci-blue" = "#0064A4",
              "dark-gray" = "#555759",
              "dark-blue" = "#1B3D6D",
              "light-blue" = "#6AA2B8",
              "light-gray" = "#C6BEB5")

  ggplot2::theme(

    # Plot elements
    plot.background = element_rect(fill = "white"),
    plot.title = ggplot2::element_text(family = font,
                                       size = base_size,
                                       face = "bold",
                                       margin=ggplot2::margin(t = base_size * 0.5,
                                                              b = base_size * 0.125),
                                       hjust = 0,
                                       color = colors[["dark-blue"]]),
    plot.subtitle = ggplot2::element_text(family = font,
                                          size = base_size * 0.7,
                                          margin = ggplot2::margin(t = base_size * 0.125,
                                                                   b = base_size * 0.5),
                                          hjust = 0,
                                          color = colors[["dark-gray"]]),
    plot.caption = ggplot2::element_text(family = font,
                                         size = base_size * 0.6,
                                         margin = ggplot2::margin(t = base_size * 0.25,
                                                                  b = base_size * 0.25),
                                         hjust = 1,
                                         color = colors[["dark-gray"]]),

    # Legend elements
    legend.position = "right",
    legend.background = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.title = ggplot2::element_text(family = font,
                                         face = "bold",
                                         size = base_size * 0.7,
                                         color = colors[["dark-gray"]]),
    legend.title.align = 0.5,
    legend.text = ggplot2::element_text(family = font,
                                        size = base_size * 0.6,
                                        color = colors[["dark-gray"]]),
    legend.text.align = 0,

    # Axis elements
    axis.text = ggplot2::element_text(family = font,
                                      size = base_size * 0.6,
                                      color = colors[["dark-gray"]]),
    axis.title = ggplot2::element_text(family = font,
                                       size = base_size * 0.7),
    axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = base_size * 0.75)),
    axis.title.y = ggplot2::element_text(margin = ggplot2::margin(r = base_size * 0.75)),
    axis.line = ggplot2::element_line(color = colors[["uci-blue"]],
                                      size = 0.75,
                                      linetype = "solid"),
    axis.ticks = ggplot2::element_line(color = colors[["dark-gray"]]),
    axis.ticks.length = unit(base_size * 0.2, "pt"),

    # Panel elements
    panel.background = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_blank(),
    panel.grid.major.x = ggplot2::element_blank(),

    # Facet elements
    strip.background = ggplot2::element_rect(fill = "white"),
    strip.text = ggplot2::element_text(size = 22,  hjust = 0)
  )
}
