# calculate the mean of numeric columns of penguins?
library(palmerpenguins)
library(tidyverse)


purrr::map(keep(penguins, is.numeric), mean, na.rm = T)
