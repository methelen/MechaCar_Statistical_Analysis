library(dplyr)

#Deliverable 1
mpg_df <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F) #Read CSV
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df) #Linear Regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)) #summary stats

#Deliverable 2
susp_table <- read.csv('Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #Read CSV
total_summary_df <- susp_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') #Create Summary table

lot_summary_df <- susp_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') #Groupby Lot

#Deliverable 3
t.test(susp_table$PSI,mu=1500) #t.test

t.test(subset(susp_table$PSI, susp_table$Manufacturing_Lot=='Lot1'),mu=1500)
t.test(subset(susp_table$PSI, susp_table$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(susp_table$PSI, susp_table$Manufacturing_Lot=='Lot3'),mu=1500)