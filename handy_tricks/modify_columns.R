# We want to turn all character columns into factor columns

# dplyr::mutate(across(where)) 
#      vs 
# purrr::modify_if()

library(dplyr)
library(purrr)



# across() ----------------------------------------------------------------


# across() makes it easy to apply the same transformation to multiple columns,
# allowing you to use select() semantics inside in "data-masking" functions like summarise() and mutate().
# See vignette("colwise") for more details.




(iris_1 <- iris %>% 
  mutate(across(.cols = where(is.character),  # Columns to transform. 
                .fns = as.factor)) %>% # Functions to apply to each of the selected columns. 
                                       # A function, e.g. mean.
                                       # A purrr-style lambda, e.g. ~ mean(.x, na.rm = TRUE)
    as_tibble())
  



# modify_if() -------------------------------------------------------------


# the modify() family always returns the same type as the input object.
# in this case a dataframe
# modify_if() only modifies the elements of x that satisfy a predicate and leaves the others unchanged.

(iris_1 <- iris %>%
    modify_if(.p = is.character, 
              .f = as.factor) %>% 
  as_tibble())

# A single predicate function, a formula describing such a predicate function, or a logical vector of the same length as .x. 
# Only those elements where .p evaluates to TRUE will be modified.

