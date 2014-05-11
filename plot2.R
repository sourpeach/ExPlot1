source('~/ExploratoryData/subsetdate.R')
library(datasets)

##changing class for variables in preperation for plotting
class(subdatetable$Global_active_power) = "numeric"
subdatetable$Day <- as.POSIXct(paste(subdatetable$Date, subdatetable$Time, format = "%d/%m/%Y %H:%M:%S"))

#plotting
with(subdatetable, plot(Day, Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l"))

##copy graph to plot2.png
dev.copy(png, file = "plot2.png")
dev.off()