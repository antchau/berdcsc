context("Color pallette")
library(berdcsc)

test_that("get_hex_color returns a hex code given a UCI color", {
  expect_named(get_hex_color("uci-blue"), c("uci-blue"))
  expect_named(get_hex_color("uci-gold", "light-blue"), c("uci-gold", "light-blue"))
})

test_that("get_color_palette returns a color palette", {
  expect_named(get_color_palette()[["main"]], c("uci-blue", "uci-gold", "dark-gray"))
  expect_named(get_color_palette()[["light"]], c("light-blue", "light-yellow", "light-gray"))
  expect_named(get_color_palette()[["dark"]], c("dark-blue", "orange", "dark-gray"))
})


test_that("interpolate_color returns the correct number of colors after interpolation", {
  expect_length(interpolate_color(n = 10), 10)
  expect_length(interpolate_color(palette = "light", n = 3), 3)
})


test_that("interpolate_color returns an error if n is not supplied", {
  expect_error(interpolate_color(), "Please supply a value for n, the number of colors to return after interpolation")
})


