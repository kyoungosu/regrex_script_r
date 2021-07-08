library(ggplot2)

args <- commandArgs(trailingOnly = TRUE)

data = read.csv(args[1])

png("r_orig.png")
scatter = ggplot(data, aes(x = x, y = y)) +
            geom_point()
dev.off()

png("r_lm.png") #open device called png
linreg = ggplot(data, aes(x = x, y = y)) +
            geom_point() +
            geom_smooth(method = "lm", se = FALSE)
dev.off()