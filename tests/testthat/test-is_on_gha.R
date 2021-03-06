test_that("use", {
  expect_silent(is_on_gha())
  expect_true(is_on_gha(github_actions = "something"))
  expect_false(is_on_gha(github_actions = ""))
  expect_error(is_on_gha(github_actions = NA))
  expect_error(is_on_gha(github_actions = NULL))
  expect_error(is_on_gha(github_actions = Inf))
  expect_error(is_on_gha(github_actions = 42))
  expect_error(is_on_gha(github_actions = c("something", "something")))
})
