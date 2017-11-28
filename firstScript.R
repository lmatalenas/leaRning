library('tidyverse')
library('googlesheets')

#Hello, world!

#GoogleSheet walkthrough

Data_sheet <- gs_title('MS Response')
data <- Data_sheet %>% gs_read('Sheet1')
