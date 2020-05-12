## Copy the code below to generate a reproducible example
## using the reprex package. Once you generate it, post it on
## https://github.com/uc-cfss/Discussion/issues/131

library(tidyverse)

# get data from rcfss package
# install latest version if not already installed
# devtools::install_github("uc-cfss/rcfss")
library(rcfss)

# load the data
data("mass_shootings")
mass_shootings

# Generate a bar chart that identifies the number of mass shooters
# associated with each race category. The bars should be sorted
# from highest to lowest.

# using forcats::fct_infreq() and using the raw data for plotting
mass_shootings %>%
  drop_na(race) %>%
  ggplot(mapping = aes(x = fct_infreq(race))) +
  geom_bar() +
  coord_flip() +
  labs(
    title = "Mass shootings in the United States (1982-2019)",
    x = "Race of perpetrator",
    y = "Number of incidents"
  )
