## 01-drop-na.R
##
## Copy the contents of the script to the clipboard
## and run reprex()
##
## Alternatively, run
reprex(input = "01-drop-na.R")

## For those on the RStudio Server, you cannot access your clipboard.
## Instead, use the method above and when prompted
## to "Open the output file for manual copy?", select "Yes".
## You can then copy and paste from the window.
## 
## Alternatively you can paste the code as the first argument to the function.
## Just be sure to wrap it in {}
reprex(
  x = {
    library(dplyr)
    library(ggplot2)
    library(rcfss)
    
    # load the data
    data("mass_shootings")
    
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
  },
  style = TRUE
)

## 02-reorder-graph.R
##
## Copy the contents of the script to the clipboard
## and run reprex()
##
## Alternatively, run
reprex(input = "02-reorder-graph.R")

## or
reprex(
  x = {
    library(tidyverse)
    library(rcfss)
    
    # load the data
    data("mass_shootings")
    
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
  }
)

## 03-reorder-urban.R
##
## Cannot be copied to the clipboard since the code
## executes in a different working directory. Even
## here::here() won't work. Instead, run it directly
## from the source file. Note outfile = NA is necessary
## to ensure the script is run from the current working directory
reprex(input = "03-reorder-urban.R", outfile = NA)

## 04-datapasta.R
##
## Use datapasta::dpasta() to create the tribble() code
## to reproduce the data frame.
here::here("data", "urbanization-state.csv") %>%
  read_csv() %>%
  # only use the first six rows, keeps the data frame minimal
  head() %>%
  datapasta::dpasta()

## Then replace the original read_csv() operation with the new code
## and run it directly from the source file
reprex(input = "04-datapasta.R", outfile = NA)
