# Eugene Kim
# Exploratory Analysis
# Week 1 Assignment - Plot 3

####### Plot 3 #######

# load data
source("./LoadFile.R")
house_power_sub <- fetch_and_load()

# plot
plot_3 <- function () {
  plot(house_power_sub$DateTime1, house_power_sub$Sub_metering_1, xlab = "", ylab = "Global Active Power (kilowatts)", main = "", type = "n")
  
  lines(house_power_sub$DateTime1, house_power_sub$Sub_metering_1, type = "l", col = "black")
  lines(house_power_sub$DateTime1, house_power_sub$Sub_metering_2, type = "l", col = "red")
  lines(house_power_sub$DateTime1, house_power_sub$Sub_metering_3, type = "l", col = "blue")
  
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
}

# output to png device
png(filename = "plot3.png", width = 480, height = 480)
plot_3()

# close connection
dev.off()
