library(dplyr)
library(jsonlite)
library(tidyverse)
## Linear Regression to Predict MPG
MechaCar_mpg <- read.csv(file="MechaCar_Statistical_Analysis/Resources/MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg))

## Summary Statistics on Suspension Coils
Suspension_Coil <- read.csv(file="MechaCar_Statistical_Analysis/Resources/Suspension_Coil.csv", check.names = F, stringsAsFactors = F)
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

## T-Tests on Suspension Coils
Sample <- Suspension_Coil %>% sample_n(50)
ttest_all <- t.test(Suspension_Coil$PSI, mu=mean(Suspension_Coil$PSI))
ttest_sample <- t.test(Sample$PSI, mu=mean(Suspension_Coil$PSI))
ttest_lot1 <- t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot1"), mu=mean(Suspension_Coil$PSI))
ttest_lot2 <- t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot2"), mu=mean(Suspension_Coil$PSI))
ttest_lot3 <- t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot3"), mu=mean(Suspension_Coil$PSI))
