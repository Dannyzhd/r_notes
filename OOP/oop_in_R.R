###this is an example of traditional object-orient programming
###where animal is called the parent class, dog and cat are two
###child object which inhertage the parent class and add some
###derivatives
Animal <- setRefClass(Class = "Animal",
                      fields = list(name = "character"),
                      methods = list(
                        initialize = function(name) {
                          name <<- name
                        },
                        speak = function() {
                          return(paste(name, "一般的动物声音"))
                        }
                      )
)

Dog <- setRefClass("Dog",
                   contains = "Animal",
                   fields = list(breed = "character"),
                   methods = list(
                     initialize = function(name, breed) {
                       callSuper(name = name)
                       breed <<- breed
                     },
                     speak = function() {
                       return(paste(name, "汪汪汪!"))
                     }
                   )
)

Cat <- setRefClass("Cat",
                   contains = "Animal",
                   fields = list(color = "character"),
                   methods = list(
                     initialize = function(name, color) {
                       callSuper(name = name)
                       color <<- color
                     },
                     speak = function() {
                       return(paste(name, "喵喵喵!"))
                     }
                   )
)

animal <- Animal$new(name = "lucy")



dog <- Dog$new(name = "旺财", breed = "拉布拉多")
cat <- Cat$new(name = "小花", color = "橘色")

cat$color = "green"

cat
cat1 <- cat

cat1$color = "red"

cat
animal$speak()
cat$speak()
dog$speak()
cat$color
cat$initialize(name = "大花", color = "白色")
cat
