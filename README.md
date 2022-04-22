# uppmaxr

Branch   |[![GitHub Actions logo](man/figures/GitHubActions.png)](https://github.com/richelbilderbeek/uppmaxr/actions)|[![Codecov logo](man/figures/Codecov.png)](https://www.codecov.io)
---------|-----------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------
`master` |![R-CMD-check](https://github.com/richelbilderbeek/uppmaxr/workflows/R-CMD-check/badge.svg?branch=master)   |[![codecov.io](https://codecov.io/github/richelbilderbeek/uppmaxr/coverage.svg?branch=master)](https://codecov.io/github/richelbilderbeek/uppmaxr/branch/master)
`develop`|![R-CMD-check](https://github.com/richelbilderbeek/uppmaxr/workflows/R-CMD-check/badge.svg?branch=develop)  |[![codecov.io](https://codecov.io/github/richelbilderbeek/uppmaxr/coverage.svg?branch=develop)](https://codecov.io/github/richelbilderbeek/uppmaxr/branch/develop)

R package to determine to UPPMAX environment

## Install

```
remotes::install_github("richelbilderbeek/uppmaxr")
```

## Examples

```
library(uppmaxr)
is_on_gha()
is_on_rackham_login_node()
is_on_rackham_runner_node()
is_on_bianca_login_node()
is_on_bianca_runner_node()

```
