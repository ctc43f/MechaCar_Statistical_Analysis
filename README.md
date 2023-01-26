# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

Using linear regression and treating all variables other than the MPG as independent, we get the below results from R:

**Linear Regression Results**

![Linear Regression Summary](/Resources/lm_summary.png)

- Two of the variables in the data have statistically significant coefficients (they predict the dependent variable MPG in a non-random way): Vehicle Length and Ground Clearance.  This assumes a p <= 0.5 confidence level.
- The slope of the model is not considered to be zero because the statistically significant coefficients have non-zero estimates.  For example, vehicle length coefficient of 6.267 implies that, for each unit of length of vehicle added to that vehicle, its MPG increases by 6.267.
- The linear model does not effectively predict mpg of vehicles.  The linear regression p-value was very small (< 0.05) so it implies the model is statistically significant and the R^2 value is 0.6825 (about 68% of the variance of MPG is explained by the variables included in the data set).  These two would imply the model does a pretty good job.  However, because the intercept coefficient is marked as statistically significant, it implies the linear model is overfit to the sample data.  If we took new data with those independent variables and attempted to predict the MPG, the model would not do a good job predicting that unseen data.

## Summary Statistics on Suspension Coils

Below are the table results from the summary statistics for the suspension coils, considering both the entire set of coils and also by-lot:

**Overall Coil Summary**

![Overall Coil Summary](/Resources/total_summary.png)

**By-Lot Coil Summary**

![By-Lot Coil Summary](/Resources/lot_summary.png)

When considering the deisgn specification for the coils that dictates no more than 100 PSI variance, at first it appears that the coils are in compliance.  The variance in the first table is 62.3 PSI.  However, when we look at variance at the lot level, it is apparent that Lot 3's 170 PSI variance exceeds the specification and should likely be rejected from being used in manufacturing.

## T-Tests on Suspension Coils

Below are the t-test results for all coils and for each individual lot:

**Overall Coil T-Test**

![Overall T-Test](/Resources/t_test_all.png)

**Lot 1 T-Test**

![Lot 1 T-Test](/Resources/t_test_lot1.png)

**Lot 2 T-Test**

![Lot 2 T-Test](/Resources/t_test_lot2.png)

**Lot 3 T-Test**

![Lot 3 T-Test](/Resources/t_test_lot3.png)

This implies that when considering the entire population, and when considering boths Lots 1 and 2, the p-value exceeding 0.05 implies the average PSI for those coils is 1,500.  The p-value for the Lot 3 is less than 0.05, which implies the average PSI for that Lot is not 1,500.

## Study Design: MechaCar vs. Competition

**Statistical Study**
Customers often make a decision based on the purchase price of the vehicle but don't consider the maintenance and repair costs over the life of a vehicle.  MechaCar might cost more upfront but have longer lasting parts or cheaper replacement parts.  The build of the vehicle might be such that self-repair is more feasible or auto shops spend less time working on it or messing with propreitary parts.  MechaCar might want to tell consumers that their vehicles are X% lower than the competition.

**Data and Methodology**
In this case lets assume that MechaCar will focus on a single model (example: Mustang) or a line of similar models (example: sedans) for its comparison.  They would then identify their competitor's most similar vehicle or what they feel is the biggest competition to the model/line they chose.  
1. Collect data on how much repairs cost for the two vehicles.  There are multiple sources they could consider: contact nationwide repair shops and request data for how often those vehicles are brought in and how much they cost, contact OEM parts manufacturers to get retail price for common broken parts and how much they produce each year, coordinate with insurance companies to get claims details for when the vehicles are in wrecks and bills to repair.  Ultimately get a data set of vehicle, date of repair, total bill, and maybe some other details about standard/nonstandard repair, geographic location, etc.  There might also be a need to adjust costs based on cost of living by region and adjust the dollar values to some common baseline.
