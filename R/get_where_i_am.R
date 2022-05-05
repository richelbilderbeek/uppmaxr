#' Describe in which environment this script is run
#'
#' @inheritParams default_params_doc
#' @return
#' Environment        | Return value
#' -------------------|-----------------------
#' Bianca login node  | `bianca_login_node`
#' Bianca runner node | `bianca_runner_node`
#' Rackham login node | `rackham_login_node`
#' Rackham runner ode | `rackham_runner_node`
#' GitHub Actions     | `github_actions`
#' Else               | `unknown`
#' @examples
#' get_where_i_am()
#' @author Richèl J.C. Bilderbeek
#' @export
get_where_i_am <- function(
  host_name = Sys.getenv("HOSTNAME"),
  github_actions = Sys.getenv("GITHUB_ACTIONS")
) {
  if (uppmaxr::is_on_bianca_login_node(host_name = host_name)) {
    return("bianca_login_node")
  }
  if (uppmaxr::is_on_bianca_runner_node(host_name = host_name)) {
    return("bianca_runner_node")
  }
  if (uppmaxr::is_on_rackham_login_node(host_name = host_name)) {
    return("rackham_login_node")
  }
  if (uppmaxr::is_on_rackham_runner_node(host_name = host_name)) {
    return("rackham_runner_node")
  }
  if (uppmaxr::is_on_gha(github_actions = github_actions)) {
    return("github_actions")
  }
  "unknown"
}
