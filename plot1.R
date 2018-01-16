# Eugene Kim
# Exploratory Analysis
# Week 1 Assignment - Plot 1

####### Plot 1 #######

# load data
source("./LoadFile.R")
house_power_sub <- fetch_and_load()

# plot
plot_1 <- function () {
  hist(house_power_sub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", 
       ylab = "Frequency", main = "Global Active Power")
}

# output to png device
png(filename = "plot1.png", width = 480, height = 480)
plot_1()

# close connection
dev.off()
