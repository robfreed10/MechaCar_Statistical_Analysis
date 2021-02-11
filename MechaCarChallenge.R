### Deliverable 1
library(dplyr)

### Import MechaCar_mpg.csv as a DataFrame
MechaCar_df <- read.csv("MechaCar_mpg.csv")#, check.names = F, stringsAsFactors = F )

### Perform Linerar Regression using lm()
lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_df)

#Summary Statistics for Linear Regression model
summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_df))



### Deliverable 2
suspension_coil_df <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

total_summary <- suspension_coil_df %>% summarize(Mean_PSI= mean(PSI), 
                                                  Median_PSI = median(PSI),
                                                  Variance_PSI = var(PSI),
                                                  SD_PSI= sd(PSI), .groups='keep')

#Summarize the description stats by Lot
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot)  %>% summarize(Mean_PSI= mean(PSI),
                                                                                 Median_PSI = median(PSI), 
                                                                                 Variance_PSI = var(PSI),
                                                                                 SD_PSI= sd(PSI), .groups='keep')



### Deliverable 3
### t-test for all manufacturing lots that differs from population mean of 1500
t.test(suspension_coil_df$PSI, mu = 1500)

#t-test Lot 1
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

#t-test Lot 2
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

#t-test Lot 3
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot3")$PSI,mu=1500)