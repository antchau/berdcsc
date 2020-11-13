context("Color pallette")
library(berdcsc)

test_that("get_hex_color returns a hex code given a UCI color", {
  expect_named(get_hex_color("uci-blue"), c("uci-blue"))
  expect_named(get_hex_color("uci-gold", "light-blue"), c("uci-gold", "light-blue"))
})

test_that("get_color_palette returns a color palette", {
  expect_named(get_color_palette()[["main"]], c("uci-blue", "uci-gold"))
  expect_named(get_color_palette()[["light"]], c("uci-gold", "light-gray", "orange"))
  expect_named(get_color_palette()[["dark"]], c("uci-blue", "light-gray", "orange"))
})


test_that("interpolate_color returns the correct number of colors after interpolation", {
  expect_length(interpolate_color()(10), 10)
  expect_length(interpolate_color(palette_name = "light")(3), 3)
})




