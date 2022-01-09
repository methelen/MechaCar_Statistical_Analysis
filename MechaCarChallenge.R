library(dplyr)
mpg_df <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F) #Read CSV
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df) #Linear Regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)) #summary stats