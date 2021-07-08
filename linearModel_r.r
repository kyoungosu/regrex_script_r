library(ggplot2)

data = read.csv("regrex1.csv")

scatter = ggplot(data, aes(x = x, y = y)) +
            geom_point()
scatter

png("linreg.png") #open device called png
linreg = ggplot(data, aes(x = x, y = y)) +
            geom_point() +
            geom_smooth(method = "lm", se = FALSE)
linreg
dev.off()

