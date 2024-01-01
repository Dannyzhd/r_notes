
# when using purrrr, we can add .progress = TRUE to see the progress bar.
# we can not only pass T, but also a list of options.

library(tidyverse)

# for example, clear = F means keep the progress bar after the map is done.
a = map(1:100000, ~{a = runif(10000) 
+ return(1)}  , .progress = list(clear = F))
