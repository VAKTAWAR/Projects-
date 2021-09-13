
getwd()
setwd("E:\\R WORKING")
getwd()

list.files()
library(tidyverse)
#install broom and sigr
cricket<-readRDS("cricket.rds") 
cricket
str(cricket)
str(cricket)
#Step1: Creating Model
cmode1<- lm(temperature~chirps_per_sec,data=cricket)  
cmode3<-lm(temperature~chirps_per_sec,data=cricket)
cmode3
cmode1
cmode1<-
cmodel<- lm(temperature~chirps_per_sec,data=cricket)
cmodel
coef_cricket<-coef(cmode1)
coef_cricket
?coef
plot(cricket)
abline(coef=coef_cricket)
summary(cmodel)

#Step2: Create prediction variable/column
cricket$prediction <- predict(cmode1)
cricket
cricket$prediction<-predict(cmode1)
cricket
# check the prediction vs actual
ggplot(cricket,aes(x=prediction,y=temperature)) +
  geom_point() +
  geom_abline(color="blue") +
  ggtitle("temperature vs linear model predictions") 

#Step3: Predict the value for chirp rate = 16.5, 18.5
newchips<-data.frame(chirps_per_sec=18.5)
newchips$prediction<-predict(cmode1,newdata=newchips)
newchips
newchirps<-data.frame(chirps_per_sec = 16.5) 
newchirps$prediction<- predict(cmode1,newdata = newchirps)
newchirps 

# load unemployment data in the workspace
unemployment<-readRDS("unemployment.rds")
unemployment
Unemployement<- readRDS("unemployment.rds" )
unemployment

summary(unemployment)

# Define a formula to express female_unemployment as a function of male_unemployment
fmla <- female_unemployment ~ male_unemployment 
fmla
# Print formula
fmla

# Use the formula to fit a model: unemployment_model
unemployment_model <- lm(formula=fmla,data=unemployment) 
unemployment_model
# explore lm
class(fmla)
class(unemployment)
class(unemployment_model)

#print the model
unemployment_model
#The coefficient for male unemployment is positive, so female unemployment increases as male unemployment does.

# broom and sigr are already loaded in your workspace
library(broom)
library(sigr)

# Print unemployment_model
unemployment_model

# Call summary() on unemployment_model to get more details
summary(unemployment_model)

#other functions to get more about models
coef(unemployment_model)
fitted.values(unemployment_model)
residuals(unemployment_model)
augment(unemployment_model)

# Call glance() on unemployment_model to see the details in a tidier form
glance(unemployment_model)

# Call wrapFTest() on unemployment_model to see the most relevant details
wrapFTest(unemployment_model)

# create a newrates dataframe as input in your workspace
newrates<- data.frame(male_unemployment = 5)
newrates

# Predict female unemployment in the unemployment data set
unemployment$prediction <-  predict(unemployment_model)
unemployment$prediction
unemployment

# load the ggplot2 package
library(ggplot2)

# Make a plot to compare predictions to actual (prediction on x axis)
ggplot(unemployment, aes(x = prediction, y = female_unemployment)) + 
  geom_point() +
  geom_abline(color = "blue")

# Predict female unemployment rate when male unemployment is 5%
pred <- predict(unemployment_model, newdata = newrates)
# Print it
pred
