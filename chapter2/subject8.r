college = read.csv("/home/gyli/ISL_LAB/ALL_CSV_FILES/College.csv", encoding = "UTF-8")

# print(summary(college))

rownames(college) = college[, 1]
college = college[, -1]
# fix(college)
# print(college)
summary(college)
# pairs(college[, 2:11])
# (c) iii
# attach(college)
# Private = as.factor(Private)
# plot(Private, Outstate)

pdf("subject8_1.pdf")
# (c) iv
Elite = rep("No", nrow(college))
Elite[college$Top10perc > 50] = "Yes"
Elite = as.factor(Elite)
college = data.frame(college, Elite)
summary(college)
plot(college$Elite, college$Outstate)

pdf("subject8_2.pdf")
par(mfrow = c(2, 2))
Private = as.factor(college$Private)
# 边沿箱线图
plot(Private, college$Grad.Rate)
# 散点图
plot(college$Top10perc, college$PhD)
# 直方图
hist(college$Expend, breaks = 1000)
hist(college$Enroll, breaks = 100)



