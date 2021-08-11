# practicing conditionals and loops----
library(tidyverse)
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
} print("yay burritos")
  else {
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









