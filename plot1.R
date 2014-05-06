plot1 <- function(data)
{
  par(mfrow = c(1,1))
  hist(data$Global_active_power,col="RED",main="Global Active Power",xlab = "Global Active Power (kilowatts)" )
  dev.copy(png,file="plot1.png",width = 480, height = 480)
  dev.off()
}