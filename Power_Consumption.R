## This file processes the power consumption data
## The getdata() function will return a dataframe required by the plot#.R functions


getdata <- function()
{
data <- read.csv("household_power_consumption.txt",sep=";",stringsAsFactors = FALSE)
subdata <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007" ,]
subdata$DateTime <- paste(subdata$Date,subdata$Time)
subdata$DateTime <- strptime(subdata$DateTime,"%d/%m/%Y %H:%M:%S")
subdata$Global_active_power <- as.numeric(subdata$Global_active_power)
subdata$Global_reactive_power <- as.numeric(subdata$Global_reactive_power)
subdata$Voltage <- as.numeric(subdata$Voltage)
subdata$Global_intensity <- as.numeric(subdata$Global_intensity)
subdata$Sub_metering_1 <- as.numeric(subdata$Sub_metering_1)
subdata$Sub_metering_2 <- as.numeric(subdata$Sub_metering_2)
subdata$Sub_metering_3 <- as.numeric(subdata$Sub_metering_3)
subdata
}

