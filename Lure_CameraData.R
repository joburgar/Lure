##############################################################
# Lure_CameraData.R
# Created by Joanna Burgar, 13-Aug-2018
# Formatting ABMI camera data to use in analyses
#############################################################

###--- Load packages
library(plyr)
library(dplyr)    # for viewing and manipulating data
library(camtrapR) # for creating camera location operability matrix


#next: load in species detection data
#this is the raw data for species detections
detectionsraw <- read.csv("T29B_CameraTrapsSpecies.csv")
glimpse(detectionsraw)
head(detectionsraw)
summary(detectionsraw)

names(detectionsraw)
levels(detectionsraw$Common.Name)

sp.data <- detectionsraw %>%
  select(Year, ABMI.Site, Quadrant, Date.Detected, Time.Detected, Common.Name, Scientific.Name, Number.of.Individuals) %>%
  filter(Common.Name=="Badger" | Common.Name=="Beaver" | Common.Name=="Bison" | Common.Name=="Black Bear" | Common.Name=="Bobcat" |
           Common.Name=="Canada Lynx" | Common.Name=="Cougar" | Common.Name=="Coyote" | Common.Name=="Deer" | Common.Name=="Elk (wapiti)" |
           Common.Name=="Fisher" | Common.Name=="Foxes" | Common.Name=="Gray Squirrel" | Common.Name=="Gray Wolf" | Common.Name=="Grizzly Bear" | 
           Common.Name=="Ground squirrel" | Common.Name=="Groundhog" | Common.Name=="Least Chipmunk" | Common.Name=="Marten" | Common.Name=="Moose" |
           Common.Name=="Mule deer" | Common.Name=="Mink" | Common.Name=="Raccoon" | Common.Name=="Red fox" | Common.Name=="Red Squirrel" |
           Common.Name=="Richardson's Ground Squirrel" | Common.Name=="River Otter" | Common.Name=="Snowshoe Hare" | Common.Name=="Striped Skunk" | 
           Common.Name=="Voles, Mice and Allies" | Common.Name=="Weasels and Ermine" | Common.Name=="White-tailed Deer" | Common.Name=="White-tailed Jack Rabbit" |
           Common.Name=="Wild Boar" | Common.Name=="Wolverine" |Common.Name=="Woodland Caribou")

glimpse(sp.data)
summary(sp.data$Common.Name)


flight %>% 
  select(FL_DATE, CARRIER, ORIGIN, ORIGIN_CITY_NAME, ORIGIN_STATE_ABR, DEP_DELAY, DEP_TIME, ARR_DELAY, ARR_TIME) %>%
  filter(CARRIER == "UA")



#load abmi characteristics to be used to calculate camera effort 
characteristics <- read.csv("T29A_CameraTrapsCharacteristics.csv")
glimpse(characteristics)
head(characteristics)
summary(characteristics)
