# Eugene Kim
# Exploratory Analysis
# Week 1 Assignment - Utility R file

# Get zip file and extract data

fetch_and_load <- function () {
  
  if (!file.exists("household_power_consumption.zip")) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "./household_power_consumption.zip")
  }
  
  # Unzip and load the full dataset
  household_power <- read.table(unz("household_power_consumption.zip", "household_power_consumption.txt"), 
                                header = TRUE, sep = ";", na.strings = "?", colClasses = c("character", "character", rep("numeric", 7)))
  
  # Subset for only 2007-02-01 and 2007-02-02
  house_power_sub <- subset(household_power, Date == "1/2/2007" | Date == "2/2/2007")
  
  # Convert dates and times
  house_power_sub$DateTime1 <- with(house_power_sub, strptime(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")) 
  
  # remove large dataset
  rm(household_power)
  
  # return the dataset
  house_power_sub
}