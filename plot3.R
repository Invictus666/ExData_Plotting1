plot3 <- function(data)
{
  par(mfrow = c(1,1))
  plot(data$DateTime,data$Sub_metering_1,type="l",ylab="Energy Sub Metering", xlab="")
  lines(data$DateTime,data$Sub_metering_2,col="RED")
  lines(data$DateTime,data$Sub_metering_3,col="BLUE")
  legend("topright",lty = 1, col=c("black","red","blue"), legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  dev.copy(png,file="plot3.png",width = 480, height = 480)
  dev.off() 
}