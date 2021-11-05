# this script tests the quick_boxplot function

testthat::test_that("plot is visible", {
  p <- quick_boxplot(datateachr::cancer_sample, diagnosis, area_mean)
  testthat::expect_visible(p)
})

testthat::test_that("plot is labelled with x as diagnosis and y as area_mean",{
  p <- quick_boxplot(datateachr::cancer_sample, diagnosis, area_mean)
  testthat::expect_identical(p$labels$x, "diagnosis")
  testthat::expect_identical(p$labels$y, "area_mean")
})

testthat::test_that("printing of ggplot object works",{
  p <- quick_boxplot(datateachr::cancer_sample, diagnosis, area_mean)
  testthat::expect_error(print(p), NA)
})

# with scaffolding credit to hplieninger via stack overflow
