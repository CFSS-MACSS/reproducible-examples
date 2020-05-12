#' ---
#' output:
#'   md_document:
#'     pandoc_args:
#'       - '--from=markdown-implicit_figures'
#'       - '--to=commonmark'
#'       - '--wrap=preserve'
#' ---



#+ reprex-setup, include = FALSE
options(tidyverse.quiet = TRUE)
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", error = TRUE)
knitr::opts_knit$set(upload.fun = knitr::imgur_upload)

#+ reprex-body
## Use the script below to generate a reproducible example
## using the reprex package. Once you generate it, post it on
## https://github.com/uc-cfss/Discussion/issues/132
## 
## Hint: look at the input and outfile arguments to reprex()

library(tidyverse)
library(here)

# import data file
urban <- read_csv(here("data", "urbanization-state.csv"))

# how do I reorder the bars from largest to smallest?
ggplot(data = urban, mapping = aes(x = state, y = urbanindex)) +
  geom_col() +
  coord_flip()



#' <sup>Created on `r Sys.Date()` by the [reprex package](https://reprex.tidyverse.org) (v`r utils::packageVersion("reprex")`)</sup>

#' <details><summary>Session info</summary>
devtools::session_info()
#' </details>
