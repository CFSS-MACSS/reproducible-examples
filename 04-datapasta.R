## Use the script below to generate a reproducible example
## using the reprex package. Use datapasta::dpasta() to create
## `urban` in the script rather than relying on the source
## CSV file. Once you generate it, post it on
## https://github.coecis.cornell.edu/orgs/cis-fa22/discussions/32

library(tidyverse)
library(here)

# import data file
urban <- read_csv(here("data", "urbanization-state.csv"))

# how do I reorder the bars from largest to smallest?
ggplot(data = urban, mapping = aes(x = state, y = urbanindex)) +
  geom_col() +
  coord_flip()
