#' Determine if the environment is a Bianca runner node
#' @inheritParams default_params_doc
#' @seealso use \link{is_on_bianca_login_node} to determine
#' if the environment is a Bianca login node
#' @examples
#' is_on_bianca_runner_node()
#' is_on_bianca_runner_node(host_name = "sens2021565-b9")
#' @author Richèl J.C. Bilderbeek
#' @export
is_on_bianca_runner_node <- function(
  host_name = Sys.getenv("HOSTNAME")
) {
  testthat::expect_equal(1, length(host_name))
  testthat::expect_true(is.character(host_name))
  stringr::str_count(
    string = host_name,
    pattern = "^sens[[:digit:]]{1,8}-b[[:digit:]]{1,4}$"
  ) == 1
}
