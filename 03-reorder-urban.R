## Use the script below to generate a reproducible example
## using the reprex package. Once you generate it, post it on
## https://github.com/uc-cfss/Discussion/issues/182
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
