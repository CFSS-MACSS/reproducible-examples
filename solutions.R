## 01-drop-na.R
##
## Copy the contents of the script to the clipboard
## and run reprex()
##
## Alternatively, run
reprex(input = "01-drop-na.R")

## For those on the RStudio Server, you cannot access your clipboard.
## Instead, use the method above and manually copy and paste
## from the window.


## 02-reorder-graph.R
##
## Copy the contents of the script to the clipboard
## and run reprex()
##
## Alternatively, run
reprex(input = "02-reorder-graph.R")


## 03-reorder-urban.R
##
## Copy the code to the clipboard and run the function below.
## This will ensure the working directory is set to the project
## folder.
reprex(wd = ".")

## To run directly from the script, use below
reprex(input = "03-reorder-urban.R", wd = ".")


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
reprex(input = "04-datapasta.R", wd = ".")
