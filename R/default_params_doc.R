#' This function does nothing. It is intended to inherit is parameters'
#' documentation.
#'
#' @param github_actions the GitHub Actions environment value,
#' as obtained by using `Sys.getenv("GITHUB_ACTIONS")`
#' @param host_name the name of the host,
#' as obtained by using `Sys.getenv("HOSTNAME")`
#' @param verbose the verbosity of a function.
#' Set to \link{TRUE} for more output.
#' @author Richèl J.C. Bilderbeek
#' @note This is an internal function, so it should be marked with
#'   \code{@noRd}. This is not done, as this will disallow all
#'   functions to find the documentation parameters
default_params_doc <- function(
  github_actions,
  host_name,
  verbose
) {
  # Nothing
}
