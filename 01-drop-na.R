## Copy the code below to generate a reproducible example
## using the reprex package. Once you generate it, post it on
## https://github.com/uc-cfss/Discussion/issues/180

library(dplyr)
library(ggplot2)

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

# using reorder() and aggregating the data before plotting
mass_shootings %>%
  count(race) %>%
  drop_na(race) %>%
  ggplot(mapping = aes(x = reorder(race, -n), y = n)) +
  geom_col() +
  labs(
    title = "Mass shootings in the United States (1982-2019)",
    x = "Race of perpetrator",
    y = "Number of incidents"
  )
