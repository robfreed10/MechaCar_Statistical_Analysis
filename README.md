# MechaCar_Statistical_Analysis
Performed linear regression analysis, gathered summary statistics, and ran t-tests to uncover trends in the data 

## Linear Regression to Predict MPG
![Linerar_Regression_Summary_Deliverable_1](https://user-images.githubusercontent.com/68922663/107639594-166e5100-6c3f-11eb-9e47-8e9fbd8e5281.png)
![Summary_Statistics_Linerar_Regression_Model](https://user-images.githubusercontent.com/68922663/107639639-22f2a980-6c3f-11eb-99b9-fbe1c1412fc2.png)
As shown in the images above, vehicle_length and ground_clearance are statistically significant while vehicle_weight, spoiler_angle, and AWD are not statistically significant due to the rather large p-value. I do not believe linerar regression is a accurate predictor of MPG because of the the p-values associated with the variables. I believe that vehicle_weight and AWD would play a significant role in MPG if a different method of regression was used. 

## Summary Statistics on Suspension Coils

#### Total Summary Statistics
![total_summary_stats](https://user-images.githubusercontent.com/68922663/107640235-f9864d80-6c3f-11eb-8151-18dca1dd7847.png)

#### Lot Summary Statistics
![lot_summary_stats](https://user-images.githubusercontent.com/68922663/107640314-16bb1c00-6c40-11eb-9b0d-59f707d57bd4.png)

Current manufacturing data will not meet the specifications for the manufacturing lots because lots 1 and 2 have a mean that mean that meet the standard 1500 PSI as well as a smaller standard deviation and variance. Lot 3 shows a slightly smaller mean, but with a standard deviation and variance that is much larger compared to both lots 1 and 2.

## T-Tests on Suspension Coils

![all_manufacturer_lots](https://user-images.githubusercontent.com/68922663/107640691-a791f780-6c40-11eb-9233-e5046fc3c82d.png)
![t-test_lot_1](https://user-images.githubusercontent.com/68922663/107640715-af519c00-6c40-11eb-8129-8508a4e01377.png)
![t-test_lot_2](https://user-images.githubusercontent.com/68922663/107640721-b082c900-6c40-11eb-8418-da7e08c31f94.png)
![t-test_lot_3](https://user-images.githubusercontent.com/68922663/107640724-b24c8c80-6c40-11eb-8230-a9ab1b8c10b9.png)

#### T-Test on Suspension Coils Summary
These t-tests show that lots 1 and 2 are not statistically significant from the population mean of 1500. Lot 3 shows a very small p-value of .0416 which proves it is statistically significant. 

## Study Design: MechaCar vs Competition
One study that can be performed is between the two variables, vehicle length and MPG. Determining whether a small car or long car is needed is very important for citizens around the United States, as their choice could also come down to how many people are in their family. Sidetracking from that, vehicle length and MPG are very important factors when choosing a new vehicle to purchase. Some people may be used to driving big cars so their next car could be a big car, and the same could be said for those used to driving smaller vehciles. 

It is important to compare both vehicle length and MPG for MechaCar against other competitors in the auto industry. The null hypothesis is that there is correlation between vehicle length and MPG against the null hypothesis that there is no correlation between vehicle length and MPG. Linear regression analysis could be ran here, as it is only comparing two variables. In R, using the lm() function will generate output as well as R-Squared, which is a determinant of correlation. I would need the data from MechaCar as well as data from not all competitors, but maybe 2-3. 
