getwd()
setwd("E:\\R WORKING") 
getwd()
list.files() 

#Data manipulation using dplyr using county dataset

#1 Load the dplyr package
library(dplyr)
counties<-readRDS("counties (2).rds")
counties           # Look at the county dataset
View(counties)
glimpse(counties)

#Select  and arrange the columns 
counties %>% select(state,county,population,unemployment)

counties_selected<-counties %>% 
  select(state,county,population,unemployment)
counties_selected

#OR this way
counties_selected<-
  select(counties,state,county,population,unemployment)

counties_selected

#To sort, use arrange
counties_selected %>%
  arrange(population)

counties_selected %>%
  arrange(desc(population))
counties_selected %>%arrange(desc(unemployment))

#Filter - To put some conditions
counties_selected %>%
  arrange(desc(population))%>%
  filter(population<500000)

counties_selected %>%
  arrange(population)%>%
  filter(state == "Florida")

#Combining both the conditiond
counties_selected %>%
  arrange(desc(population))%>%
  filter(state == "New York",unemployment<6)

#Mutate - To add variables or change existing variables
counties_selected %>%
  mutate(unemployed_population = population*unemployment/100)

#now sort them by unemployed population
counties_selected %>%
  mutate(unemployed_population = population*unemployment/100)%>%
  arrange(desc(unemployed_population))

counties_selected %>%
  mutate(continent = "North America")

#Practice Exercise
#1Select the counties by type of works- public,private, self employed and other variables are state,county and population

counties_selected <- counties %>%
  select(state, county, population, private_work, public_work, self_employed)

counties_selected
#Add a verb to sort in descending order of public_work
counties_selected %>% arrange(desc(public_work))

#2(a)Filter for counties in the state of California that have a population above 1000000

counties_selected <- counties %>%
  select(state, county, population)

counties_selected %>% filter(state=="California", population>1000000)

#(b)Filter for counties in the state of Texas that have a population above 10000 and sort them in descending order of the percentage of people employed in private work

counties_selected <- counties %>%
  select(state, county, population,private_work,public_work,self_employed)

counties_selected %>% 
  filter(state=="Texas", population>10000)%>%
  arrange(desc(private_work))

#3 Add a new column public_workers with the number of people employed in public work and sort them in desc order.

counties_selected <- counties %>%
  select(state, county, population, public_work)

counties_selected

counties_selected %>% 
  mutate(public_workers=population*public_work/100) %>%
  arrange(desc(public_workers))

#4 Calculate proportion_women as the fraction of the population made up of women
# Select the columns state, county, population, men, and women
counties_selected <- counties %>% select(state, county, population, men,women)

counties_selected %>% mutate(proportion_women=women/population)

#Select , mutate, filter and arrange ***************************
#Find the counties with the highest proportions of men

counties %>% 
  # Select the five columns 
  select(state, county, population, men, women) %>%
  # Add the proportion_men variable
  mutate(proportion_men=men/population) %>%
  # Filter for population of at least 10,000
  filter(population>10000) %>%
  # Arrange proportion of men in descending order 
  arrange(desc(proportion_men))