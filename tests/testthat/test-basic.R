test_that("dataset has expected shape", {
  dat <- beetle_data()
  expect_equal(nrow(dat), 74)
  expect_equal(ncol(dat), 3)
  expect_equal(levels(dat$Species), c("Con", "Hei", "Hep"))
})

