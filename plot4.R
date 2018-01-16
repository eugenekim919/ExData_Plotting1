# Eugene Kim
# Exploratory Analysis
# Week 1 Assignment - Plot 4

####### Plot 4 #######

# load data
source("./LoadFile.R")
house_power_sub <- fetch_and_load()

# output to png device
png(filename = "plot4.png", width = 480, height = 480)

# Set up graphics grid
par(mfcol = c(2,2))

# plot top left
source("./plot2.R")
plot_2()

# plot bottom left
source("./plot3.R")
plot_3()

# plot top right
plot(house_power_sub$DateTime1, house_power_sub$Voltage, col = "black", xlab = "datetime", ylab = "Voltage", main = "", type = "n")
lines(house_power_sub$DateTime1, house_power_sub$Voltage, type = "l")

# plot bottom right
plot(house_power_sub$DateTime1, house_power_sub$Global_reactive_power, col = "black", xlab = "datetime", ylab = "Voltage", main = "", type = "n")
lines(house_power_sub$DateTime1, house_power_sub$Global_reactive_power, type = "l")

# close connection
dev.off()
