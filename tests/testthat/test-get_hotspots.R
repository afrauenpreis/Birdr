test_that("That get regions works", {
  correct_result <- "Aman Park"

  my_result <- get_hotspots(region = "US", key = "6qqv2oh5smkm")

  expect_true(correct_result %in% my_result$name)
})
