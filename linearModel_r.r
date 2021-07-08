library(ggplot2)

#args <- commandArgs(trailingOnly = TRUE)

#read.csv(args[1])

#regrex1 = read.csv(args[1])

regrex1 = read.csv("regrex1.csv")

png("r_orig.png")
r_orig = ggplot(regrex1, aes(x = x, y = y)) +
            geom_point()
r_orig
dev.off()

png("r_lm.png") #open device called png
r_lm = ggplot(regrex1, aes(x = x, y = y)) +
            geom_point() +
            geom_smooth(method = "lm", se = FALSE)
r_lm
dev.off()