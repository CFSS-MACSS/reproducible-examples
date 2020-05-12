## 01-drop-na.R
## 
## Copy the contents of the script to the clipboard
## and run reprex()
## 
## Alternatively, run
reprex(input = "01-drop-na.R")

## 02-reorder-graph.R
## 
## Copy the contents of the script to the clipboard
## and run reprex()
## 
## Alternatively, run
reprex(input = "02-reorder-graph.R")

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
