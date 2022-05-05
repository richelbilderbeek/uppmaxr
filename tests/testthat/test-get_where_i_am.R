test_that("use", {
  expect_silent(get_where_i_am())
  expect_equal(
    get_where_i_am(
      host_name = "sens2021565-bianca.uppmax.uu.se",
      github_actions = ""
    ),
    "bianca_login_node"
  )
  expect_equal(
    get_where_i_am(
      host_name = "sens2021565-b9",
      github_actions = ""
    ),
    "bianca_runner_node"
  )
  expect_equal(
    get_where_i_am(
      host_name = "rackham3.uppmax.uu.se",
      github_actions = ""
    ),
    "rackham_login_node"
  )
  expect_equal(
    get_where_i_am(
      host_name = "r123",
      github_actions = ""
    ),
    "rackham_runner_node"
  )
  expect_equal(
    get_where_i_am(
      host_name = "can be anywhere",
      github_actions = "GITHUB_ACTIONS"
    ),
    "github_actions"
  )
  expect_equal(
    get_where_i_am(
      host_name = "unknown",
      github_actions = ""
    ),
    "unknown"
  )
})
