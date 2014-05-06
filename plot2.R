plot2 <- function(data)
{
  par(mfrow = c(1,1))
  with(data,plot(DateTime,Global_active_power,type="l",ylab="Global Active Power (kilowatts)", xlab=""))
  dev.copy(png,file="plot2.png",width = 480, height = 480)
  dev.off()
}