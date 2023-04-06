library(MASS)
library(ISLR)

# fix(Boston)
names(Boston)
attach(Boston)
lm.fit = lm(medv~lstat)
# 输出系数信息
lm.fit
# 输出系数p值和标准误
summary(lm.fit)

# res(lm.fit)

plot(lstat, medv, pch=1:20)

# 四幅诊断图
par(mfrow=c(2,2))
plot(lm.fit)

# 残差及学生化残差
plot(predict(lm.fit), residuals(lm.fit))
plot(predict(lm.fit), rstudent(lm.fit))
# 计算杠杆量
plot(hatvalues(lm.fit))
which.max(hatvalues(lm.fit))
