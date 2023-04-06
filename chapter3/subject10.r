library(ISLR)
Carseats = read.csv("../ALL_CSV_FILES/Carseats.csv", header = TRUE)
Carseats = na.omit(Carseats)

Urban = as.factor(Carseats$Urban)
US = as.factor(Carseats$US)
lm.fit1 = lm(Sales~Price+Urban+US, data = Carseats)

summary(lm.fit1)

lm.fit2 = lm(Sales~Price+US, data = Carseats)
summary(lm.fit2)
# 置信区间
confint(lm.fit2)

par(mfrow = c(2, 2))
plot(lm.fit2)