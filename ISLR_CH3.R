library(MASS)
library(ISLR)
### Simple linear regression
names(Boston)
?Boston
plot(medv~lstat,Boston)
fit1=lm(medv~lstat,data=Boston)
fit1
summary(fit1)
abline(fit1,col="red")
names(fit1)
confint(fit1)
predict(fit1,data.frame(lstat=c(5,10,15)),interval="confidence")
### Multiple linear regression
fit2=lm(medv~lstat+age,data=Boston)
summary(fit2)
fit3=lm(medv~.,Boston)
summary(fit3)
par(mfrow=c(2,2))
plot(fit3)
fit4=update(fit3,~.-age-indus)
summary(fit4)
### Nonlinear terms and Interactions
fit5=lm(medv~lstat*age,Boston)
summary(fit5)
fit6=lm(medv~lstat +I(lstat^2),Boston); summary(fit6)
attach(Boston)
par(mfrow=c(1,1))
plot(medv~lstat)
points(lstat,fitted(fit6),col="red",pch=20)
fit7=lm(medv~poly(lstat,4))
points(lstat,fitted(fit7),col="blue",pch=20)
plot(1:20,1:20,pch=1:20,cex=2)
detach(Boston)
###Qualitative predictors
fix(Carseats)
names(Carseats)
summary(Carseats)
fit1=lm(Sales~.+Income:Advertising+Age:Price,Carseats)
summary(fit1)
contrasts(Carseats$ShelveLoc)
###Writing R functions
regplot=function(x,y){
  fit=lm(y~x)
  plot(x,y)
  abline(fit,col="red")
}
attach(Carseats)
regplot(Price,Sales)

regplot=function(x,y,col = 'red',...){
  fit=lm(y~x)
  plot(x,y,...)
  abline(fit,col=col)
}
regplot(Price,Sales,xlab="Price",ylab="Sales",col="blue",pch=20)
regplot(Price, Sales, col = 'blue')


# Applied Exercises -------------------------------------------------------

?Auto
autoLm <- lm(mpg~horsepower, Auto)
autoLm
summary(autoLm)
names(autoLm)
pred

confint(autoLm)
predict(autoLm,data.frame(horsepower=98),interval="confidence")
predict(autoLm,data.frame(horsepower=98),interval="prediction")

# b plot response and predictor
attach(Auto)
regplot(x = horsepower, y = mpg)

# c plot function
plot(autoLm)

# 9 Multiple Linear Regression on Auto
# a Produce a Scatterplot matrix
pairs(Auto)

# b compute matrix of correlations; exclude name variable
varnames <- colnames(Auto)
df <- data.frame(correlation = cor(Auto[1:8])[,1])


# c multiple linear regression excluding name
multLm <- lm(mpg~.-name, Auto)
multLm
summary(multLm)
# i: relationship based on R-squared of .82; F-Statistic of 252.4
# ii: weight, year and origin have significance based on t-value and p-value
# iii: newer cars have some year-based feature that improves the MPG

# d plot function
par(mfrow = c(2,2))
plot(multLm)
# 323, 327 and 326 actual MPG are above predicted mpg; 14 has high leverage and is predicted higher than actual

# e use * and :
multLm2 <- lm(mpg~.-name + horsepower*weight, Auto)
multLm2 <- lm(mpg~.-name + horsepower:acceleration + year:origin
              + year:weight + displacement:horsepower + cylinders:displacement, Auto)
summary(multLm2)
# significant interations: horesepower and acceleration; weight and year; displacement and horsepower

# f transformations


