# let's read in a csv file
# first load the package that contains read_csv
library(readr)
library(tidyverse)

workshop_sheet <- read_csv("~/Desktop/Workshp Schedule.csv") %>% as_tibble()


# now let's write it our as an excel file into the desktop
library(writexl)
write_xlsx::write_xlsx(workshop_sheet, "~/Desktop/workshop.xlsx", col_names=TRUE)

