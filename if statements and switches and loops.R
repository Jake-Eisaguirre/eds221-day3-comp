# practicing conditionals and loops----
library(tidyverse)
library(palmerpenguins)
# refresh boolean operators

nitro <- 14
moby <- 46

nitro == 12
moby > nitro

nitro != 25

# create some basic if statemnts 
burrito <- 1

if (burrito > 2) {
  print("I love burritos!")
}

if (burrito = 2) {
  print ("I love burritos")
}

if (burrito <= 2) {
  print("I love burritos")
}

# graw whale, blue whale, whale
sbc_observations <- c("blue whale", "gray whale", "whale", "gray wale", "dolphin", "sea lion", 
                      "blue whale")

str_detect(sbc_observations, pattern = "whale")

#An example of str_detect() within a connditional statment 

phrase <- "i really love data science"

if(str_detect(phrase, "data")) {
  print("same")
}


#if else statements
pika <- 89

if(pika > 60) {
  print("Large pika")
} else {
  print("Small pika")
}

# create a string 'food <- "I love tacos"
# write an if-else statement that prints "yay burritos" if the string "burritos is detected in 'food'
# or prints "what about burritos?" otherwise.

food <- "I love tacos"

if (str_detect(food, pattern = "burritos")) {
  print("yay burritos")
} else {
  print("what about burritos")
  }

# create a new stored object called 'marmot' with a value of 2.8. Write an if-elseif-else statement that reutnre
# "small marmot" if marmot is less than 0.5, "medium marmot" if marmot is >=0.5 and <3, and 'large marmot"
#if marmot is >=3

marmot <- 2.8

if(marmot < 0.5) {
  print("small marmot")
} else if (marmot >= 0.5 & marmot < 3) {
  print("medium marmot")
} else (marmot >= 3) {
  print("larg marmot")
}


species <- "lion"

switch(species, 
       "cat" = print("meow"),
       "lion" = print("roar"),
       "owl" = print("screech"),
       "fox" = print("obnoxious"))



View(mtcars)
class(mtcars[[2]])
class(mtcars[2])
class(mtcars$mpg)

#ncol() returns the number of columns in a single data fream
mean_mtcars <- vector(mode = "numeric", length = ncol(mtcars))

#write a loop
for(i in 1 : ncol(mtcars)) {
  mean_val <- mean(mtcars[[i]], na.rm = TRUE)
  mean_mtcars[[i]] <- mean_val
}

#group by practice

View(penguins)

pennguin_bill_sum <- penguins %>% 
  group_by(species, island) %>% 
  summarize(mean_bill_depth = mean(bill_depth_mm, na.rm = TRUE),
            sd_bill_depth = sd(bill_depth_mm, na.rm = TRUE))

# wrangle data
penguins_subset <- penguins %>% 
  filter(island == "Torgersen") %>% 
  select(species, flipper_length_mm, year)

# for loop intro practice
animal <- c("cat", "dog", "cat", "zebra", "elephant")

for (i in seq_along(animal)) {
  
  if(animal[i] == "dog"){
    print("woof")
  } else {
    print("this is a different animal")
  }
}

species <- c("dog", "elephant", "goat", "dog", "elephant")
age_human <- c(3, 8, 4, 6, 12)

animal_ages <- vector(mode = "numeric", lenght =lenght(species))

for (i in seq_along(species)) {
  if (species[i] == "dog") {
    animal_age <- age_human[i]*7
  } else if (species[i] == "elephant") {
    animal_age <- age_human[i]*0.88
  } else if (species[i] == "goat") {
    animal_age <- age_human[i]*4.7
  }
  animal_ages[i] <- animal_age
}

animal_ages


# calculate the mean value of each column in a data frame

mean_mt_cars <- vector(mode = "numeric", length = ncol(mtcars))

for (i in seq_along(mtcars)){
  mean_val <- mean(mtcars[[i]], na.rm = TRUE)
  mean_mt_cars[i] <- mean_val
  
}


## same thing with apply()

apply(mtcars, 2, mean, na.rm = TRUE)

## with purr
map_df(mtcars, mean)


















