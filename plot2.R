# Eugene Kim
# Exploratory Analysis
# Week 1 Assignment - Plot 2

####### Plot 2 #######

# load data
source("./LoadFile.R")
house_power_sub <- fetch_and_load()

# plot
plot_2 <- function () {
  plot(house_power_sub$DateTime1, house_power_sub$Global_active_power, 
       col = "black", xlab = "", ylab = "Global Active Power (kilowatts)", main = "", type = "n")
  lines(house_power_sub$DateTime1, house_power_sub$Global_active_power, type = "l")
}

# output to png device
png(filename = "plot2.png", width = 480, height = 480)
plot_2()

# close connection
dev.off()
