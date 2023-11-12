# base::split()

# split a dataframe ####

# provide the column explicitly
split(x = mtcars, f = mtcars$cyl)

# provide the column using twiddle formula
split(x = iris, f = ~Species)

# split a named vector ####

x <- c(a = 1, b = 2, c = 33, d = 44, a = 10000)
(x_split_by_name <- split(x, names(x)))


# split a vector ####

g <- factor(round(10 * runif(1000))) # scale 1000 uniform(0,1) random variables and make it a factor

x <- rnorm(1000) + as.numeric(g) # add them as a vector to a vector of 1000 norm(0,1) random variables

# then the distribution of x is affected by distribution of g.
# to understand that we can plot them by levels in g

split(x, g) %>% boxplot()


