plot4 <- function(data)
{
  par(mfrow = c(2,2))
  
  with(data,plot(DateTime,Global_active_power,type="l",ylab="Global Active Power (kilowatts)", xlab=""))
  with(data,plot(DateTime,Voltage,type="l",ylab="Voltage", xlab="Datetime"))
  
  plot(data$DateTime,data$Sub_metering_1,type="l",ylab="Energy Sub Metering", xlab="")
  lines(data$DateTime,data$Sub_metering_2,col="RED")
  lines(data$DateTime,data$Sub_metering_3,col="BLUE")
  legend("topright",lty = 1, col=c("black","red","blue"), legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
  with(data,plot(DateTime,Global_reactive_power,type="l",ylab="Global_reactive_power", xlab="Datetime"))
  dev.copy(png,file="plot4.png",width = 480, height = 480)
  dev.off()
  
}