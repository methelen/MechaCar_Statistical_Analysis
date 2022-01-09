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
