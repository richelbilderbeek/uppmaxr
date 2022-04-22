#' Determine if the environment is a Rackham login node
#' @inheritParams default_params_doc
#' @seealso
#' Use \link{is_on_rackham_runner_node} to determine
#' if the environment is a Rackham runner node.
#'
#' Use \link{is_on_bianca_login_node} to determine
#' if the environment is a Bianca login node.
#' @examples
#' is_on_rackham_login_node()
#' is_on_rackham_login_node(host_name = "rackham3.uppmax.uu.se")
#'
#' @author Richèl J.C. Bilderbeek
#' @export
is_on_rackham_login_node <- function(
  host_name = Sys.getenv("HOSTNAME")
) {
  testthat::expect_equal(1, length(host_name))
  testthat::expect_true(is.character(host_name))
  stringr::str_count(
    string = host_name,
    pattern = "^rackham3\\.uppmax\\.uu\\.se$"
  ) == 1
}
