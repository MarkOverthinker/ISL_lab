Auto = read.csv("../ALL_CSV_FILES/Auto.csv", header = T, na.strings = "?")
Auto = na.omit(Auto)
summary(Auto)

attach(Auto)
lm.fit = lm(mpg~horsepower)
summary(lm.fit)

predict(lm.fit, data.frame(horsepower=c(98)), interval="confidence")