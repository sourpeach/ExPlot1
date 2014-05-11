source('~/ExploratoryData/subsetdate.R')
library(datasets)

##changing class for variables in preperation for plotting
class(subdatetable$Global_active_power) = "numeric"
subdatetable$Day <- as.POSIXct(paste(subdatetable$Date, subdatetable$Time, format = "%d/%m/%Y %H:%M:%S"))

#create png
png(filename = "plot4.png")

#plotting
par(mfrow = c(2,2))
with(subdatetable, {
  plot(Day, Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
  plot(Day, Voltage, type = "l", xlab = "datetime")
  plot(Day, Sub_metering_1, type = "l", ylab = "Energy sub metering" )
lines(subdatetable$Day, subdatetable$Sub_metering_2, col = "red")
lines(subdatetable$Day, subdatetable$Sub_metering_3, col = "blue")
legend("topright", cex = 0.95, c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty = 1,col = c("black", "red", "blue"))
  plot(Day, Global_reactive_power, type = "l", xlab = "datetime")})

dev.off()