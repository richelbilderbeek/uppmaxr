#' Determine if the environment is a Rackham runner node
#' @inheritParams default_params_doc
#' @seealso
#' Use \link{is_on_rackham_login_node} to determine
#' if the environment is a Rackham login node.
#'
#' Use \link{is_on_bianca_runner_node} to determine
#' if the environment is a Bianca runner node.
#' @examples
#' is_on_rackham_runner_node()
#' is_on_rackham_runner_node(host_name = "r123")
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
