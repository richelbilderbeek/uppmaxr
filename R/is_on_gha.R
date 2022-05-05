#' Determine if the environment is GitHub Actions
#' @inheritParams default_params_doc
#' @examples
#' is_on_gha()
#'
#' # Not on GHA
#' is_on_gha("")
#'
#' # On GHA
#' is_on_gha("GITHUB_ACTIONS")
#' @author Richèl J.C. Bilderbeek
#' @export
is_on_gha <- function(github_actions = Sys.getenv("GITHUB_ACTIONS")) {
  testthat::expect_equal(1, length(github_actions))
  testthat::expect_true(is.character(github_actions))
  github_actions != ""
}
