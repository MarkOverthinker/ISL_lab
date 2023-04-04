Auto = read.csv("/home/gyli/ISL_LAB/ALL_CSV_FILES/Auto.csv")

dim(Auto)
summary(Auto)
Auto = na.omit(Auto)
# Auto = Auto[2,]
dim(Auto)
summary(Auto)

range(Auto$weight)

mean(Auto$weight)

lapply(Auto[, 1:3], sd)

newAuto = Auto[-c(10,85), ]
dim(newAuto)