## Use the script below to generate a reproducible example
## using the reprex package. Once you generate it, post it on
## https://github.coecis.cornell.edu/cis-fa22/discussion/issues/3
## 
## Hint: look at the input and wd arguments to reprex()

library(tidyverse)
library(here)

# import data file
urban <- read_csv(here("data", "urbanization-state.csv"))

# how do I reorder the bars from largest to smallest?
ggplot(data = urban, mapping = aes(x = state, y = urbanindex)) +
  geom_col() +
  coord_flip()
