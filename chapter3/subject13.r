set.seed(1)
x = rnorm(100, mean = 0, sd = 1)
eps = rnorm(100, mean = 0, sd = 0.25)
y = -1 + 0.5 * x + eps
pdf("subject13.pdf")
plot(x, y)
abline(-1, 0.5)

# 建立个y对x的回归
lm.fit1 = lm(y~x)
summary(lm.fit1)
par(mfrow = c(2, 2))
plot(lm.fit1)

par(mfrow = c(1, 1))
plot(x, y)
abline(lm.fit1, lwd = 3, col = "red")
abline(-1, 0.5, lwd = 3, col = "blue")
legend(-1, legend = c("model fit", "pop. regression"), col=c("blue", "red"), lwd=3)

lm.fit2 = lm(y~x+I(x^2))
summary(lm.fit2)