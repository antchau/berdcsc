context("Color pallette")
library(berdcsc)

test_that("get_hex_color returns a hex code given a UCI color", {
  expect_named(get_hex_color("uci-blue"), c("uci-blue"))
  expect_named(get_hex_color("uci-gold", "light-blue"), c("uci-gold", "light-blue"))
})
