test_that("uss_make_matches works as expected", {
  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  expect_true(tibble:::is_tibble(italy))
  expect_named(
    italy,
    c("country", "tier", "season", "date", "home", "visitor",
      "goals_home", "goals_visitor")
  )
  expect_identical(dplyr::distinct(italy, country) |> dplyr::pull(),
                   "Italy")
  expect_s3_class(italy$tier, "factor")
})
