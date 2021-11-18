# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Linear_Reg_Pred_MPG]()

The y-intercept, vehicle_length, and ground_clearance contribute non-random amounts of variance to the linear
model with the most significant p-values. The vehicle_weight, spoiler_angle, and AWD all have p-values above
0.05 and as such do not contribute non-random amounts of variance that are significant. The model as a whole
has a multiple r-squared value of 0.7149 and adjusted r-squared value of 0.6825. Therefore, the model is able to
predict mpg around 71% of the time which is fairly effective. Obviously because of each of the variables has a coefficient
the slope of the linear model will not be zero.

## Summary Statistics on Suspension Coils

![Total_Summary]()
![Lot_Summary]()

At first glance the MechaCar suspension coils seem to fall under the parameters of not exceeding 100 pds per sq inch of variance.
However, examing the cars by Lot we see that the third Lot does not meet this requirment and is actually far above the 100 variance limit 
sitting at 170.2861224. The mean and median of the Lots, however are relatively the same.

##  T-Tests on Suspension Coils

### All_TTest
![All_TTest]()
Obviously if you sample all of the Suspension coils and compare them against the population mean the p-value is going to be 1. So this t-test
barely shows us anything.
### Sample_TTest
![Sample_TTest]()
However, taking a random sample from the Suspension coils of 50 and comparing them against the population we get a p-value of .2399563 which
allows us to conclude there is not a significant difference from the population mean of 1500 pounds per square inch. (Cannot reject null that
means are statistically similar)
### Lot1
![Lot1_TTest]()
Based on Lot 1 it would appear the PSI measurement is statistically different than the 1500 pounds per square inch of the population. The ttest 
returns with a p-value of 1.568193e-11. Thus, the means are not statistically similar.
### Lot2
![Lot2_TTest]()
What was said about Lot 1 can be also said for Lot 2. The t-test returns a p-value of 0.0005911483 which based on the 0.05 significance level allows us
to reject the null hypothesis that the means are statistically similar. 
### Lot3
![Lot3_TTest]()
Lot 3 p-value returned from the ttest has a value of 0.1589092 which is not statistically significant based on the 0.05 significance level and thus we 
cannot reject the null hypothesis. 

## Study Design: MechaCar vs. Competition

Most potential customers are going to look at the mpg, cost, safety rating, and fuel efficiency when it comes to comparing the MechCar to the competition.
2 sample paired t-tests would be useful in comparing the MechaCar results to the competitions results. Based on a significance value of 0.05 we would test to see if 
the MechaCar had statistically different means compared to the competition when it comes to these categories. A p-value below 0.05 would lead to rejecting the null hypthesis
the the two means of the categories are the similar. Meanwhile, the alternative hypothesis would be that the competiton and MechaCar are statistically different in the category
currently being tested. Collecting the data for this study would be fairly easy. Simply take a random sample of MechCars and cars from competitors and run them under the same conditions
to get the measurements mentioned above. Understand however, that when taking information about competitors it will also be helpful to break them down by manufacturer when performing the 
following analysis. 
