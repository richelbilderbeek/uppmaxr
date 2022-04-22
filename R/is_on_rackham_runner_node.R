#' Determine if the environment is a Rackham runner node
#' @inheritParams default_params_doc
#' @examples
#' is_on_rackham_runner_node()
#' @author Richèl J.C. Bilderbeek
#' @export
is_on_rackham_runner_node <- function(
  host_name = Sys.getenv("HOSTNAME")
) {
  testthat::expect_equal(1, length(host_name))
  testthat::expect_true(is.character(host_name))
  stringr::str_count(
    string = host_name,
    pattern = "^r[:digit:]{1,3}$"
  ) == 1
}
