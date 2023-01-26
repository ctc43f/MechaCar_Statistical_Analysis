####################PART 1########################
# Import dplyr package
library(dplyr)

# Import the csv file (could not get it to pull from working directory)
mechacar_mpg <- read.csv(file='C:/Users/Christopher/Desktop/Bootcamp/Module_16/Challenge_16/MechaCar_mpg.csv')

# Conduct linear regression using all independent variables
lm(mpg ~ ., data = mechacar_mpg)

# Look at summary statistics of the linear regression
summary(lm(mpg ~ ., data = mechacar_mpg))



####################PART 2########################
# Import csv file for suspension coils
susp_coil <- read.csv(file='C:/Users/Christopher/Desktop/Bootcamp/Module_16/Challenge_16/Suspension_Coil.csv')

# Create summary table
total_summary <- susp_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance=var(PSI), SD=sd(PSI))
print(total_summary)

# Create summary table by Lot
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance=var(PSI), SD=sd(PSI), .groups= 'keep')
print(lot_summary)



####################PART 3########################
# Check distribution of all Lot data
library(ggplot2)
plt <- ggplot(susp_coil, aes(PSI))
plt + geom_density()

# Test entire data set (t-test)
t.test(susp_coil$PSI, mu=1500)

# Create subset data
Lot_1_df <- subset(susp_coil, Manufacturing_Lot == 'Lot1')
Lot_2_df <- subset(susp_coil, Manufacturing_Lot == 'Lot2')
Lot_3_df <- subset(susp_coil, Manufacturing_Lot == 'Lot3')

# Lot 1 Test
t.test(Lot_1_df$PSI, mu = 1500)

# Lot 2 Test
t.test(Lot_2_df$PSI, mu = 1500)

# Lot 3 Test
t.test(Lot_3_df$PSI, mu = 1500)
