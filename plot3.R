source('~/ExploratoryData/subsetdate.R')
library(datasets)

##changing class for variables in preperation for plotting
class(subdatetable$Global_active_power) = "numeric"
subdatetable$Day <- as.POSIXct(paste(subdatetable$Date, subdatetable$Time, format = "%d/%m/%Y %H:%M:%S"))

#create png file
png(filename = "plot3.png")

#plotting
with(subdatetable, plot(Day, Sub_metering_1, type = "l", ylab = "Energy sub metering" ))
lines(subdatetable$Day, subdatetable$Sub_metering_2, col = "red")
lines(subdatetable$Day, subdatetable$Sub_metering_3, col = "blue")
legend("topright", cex = 0.95, c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty = 1,col = c("black", "red", "blue"))

dev.off()