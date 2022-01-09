# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
Vehicle length and ground clearance provided a non-random amount of variance to the mpg values. The slope of the linear model is not considered to be zero because the p-value is notably less than 0.05% and the R-squared value is 0.715. This linear model therefore predicts the mpg of MechaCar prototypes 70% effectively. This isn't a particulary great probability, so further analysis could be done to create a more effective prediction.

## Summary Statistics on Suspension Coils
The overall data shows that the design specification for all lots combined does meet the variance requirements of the PSI. 
![PSI Table](https://user-images.githubusercontent.com/90434010/148665082-dbfae207-f032-4d09-8cf2-a2c1c302e19d.PNG)

However, when we further dig down into the manufacturing lots, we see that Lot 3 is not meeting that specification as the variance is 170.29 and the standard deviation is 13.05. Lot 1 is doing the best with the lowest variance and Lot 2 is close behind Lot 1.
![PSI by Lot](https://user-images.githubusercontent.com/90434010/148665084-572802d4-c751-4711-b89a-e8a0099f316a.PNG)

## T-Tests on Suspension Coils
```
> t.test(susp_table$PSI,mu=1500) #t.test

	One Sample t-test

data:  susp_table$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
```
The t-test for the entire population provides a p-value of 0.06. There is not sufficient evidence to reject the null hypothesis.

```
> t.test(subset(susp_table$PSI, susp_table$Manufacturing_Lot=='Lot1'),mu=1500)

	One Sample t-test

data:  subset(susp_table$PSI, susp_table$Manufacturing_Lot == "Lot1")
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
```
The t-test for Lot 1 shows a p-value of 1, which means there is not sufficient evidence to reject the null hypothesis.

```
> t.test(subset(susp_table$PSI, susp_table$Manufacturing_Lot=='Lot2'),mu=1500)

	One Sample t-test

data:  subset(susp_table$PSI, susp_table$Manufacturing_Lot == "Lot2")
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2
```
The t-test for Lot 2 shows a p-value of .61, which means there is not sufficient evidence to reject the null hypothesis.

```
> t.test(subset(susp_table$PSI, susp_table$Manufacturing_Lot=='Lot3'),mu=1500)

	One Sample t-test

data:  subset(susp_table$PSI, susp_table$Manufacturing_Lot == "Lot3")
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
```

The t-test for Lot 3 shows a p-value of 0.042, which means there is sufficient statistical evidence to reject the null hypothesis. Lot 3's mean PSI is statistically different
from the whole populations's mean PSI.

## Study Design: MechaCar vs Competition
1. I would test MechaCar's fuel efficiency compared to the competitors.
2. The null hypothesis is that the mean value of MechaCar's mpg is equal to the competition's. The alternate hypothesis is that the mean of MechaCar's mpg is not equal to the competition's.
3. I would use a one-sample t-test to determine if there is a statistical difference between the mean of MecahCar's distribution and the mean of the competitor's distribution. This hopefully would provide a simple way to see if MechaCar's fuel efficiency is better than their competitor's.
4. In order to run the statistical test, we would need fuel efficiency data from MechaCar and their competitors in a given time frame. We could then group the fuel efficiency by car type to narrow the findings and compare similar car types among all companies. 
