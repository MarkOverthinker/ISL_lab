Auto = read.csv("../ALL_CSV_FILES/Auto.csv", header = T, na.strings = "?")

Auto = na.omit(Auto)

# 绘制所有变量的散点图矩阵
pairs(Auto[, 1:8])

# 计算变量之间的相关系数矩阵
cor(subset(Auto, select = -name))

# 使用1m ()函数进行多元线性回归，用除了name 之外的所有变量作为预测变量， mpg作为响应变量
lm.fit = lm(mpg~.-name, data = Auto)
summary(lm.fit)

# 生成线性回归拟合诊断图
par(mfrow = c(2, 2))
plot(lm.fit)

plot(predict(lm.fit), rstudent(lm.fit))

# 带交互的预测
lm.fit1 = lm(mpg~.-cylinders*displacement+displacement*weight, data = Auto)
plot(lm.fit1)