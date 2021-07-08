library(ggplot2)

#args <- commandArgs(trailingOnly = TRUE)

#data = read.csv(args[1])

data = read.csv("regrex1.csv")

png("r_orig.png")
r_orig = ggplot(data, aes(x = x, y = y)) +
            geom_point()
r_orig
dev.off()

png("r_lm.png") #open device called png
r_lm = ggplot(data, aes(x = x, y = y)) +
            geom_point() +
            geom_smooth(method = "lm", se = FALSE)
r_orig
dev.off()