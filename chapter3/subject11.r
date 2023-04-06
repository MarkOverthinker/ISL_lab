set.seed(1)
x=rnorm(100)
y = 2*x+rnorm(100)

# y对x无截距简单线性回归
lm.fit1 = lm(y~x+0)
summary(lm.fit1)
pdf("subject11.pdf")
par(mfrow = c(2, 2))
plot(lm.fit1)

# x对y无截距简单线性回归
lm.fit2 = lm(x~y+0)
summary(lm.fit2)
plot(lm.fit2)