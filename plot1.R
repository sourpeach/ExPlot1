source('~/ExploratoryData/subsetdate.R') ##reading data
library(datasets)

##plotting 
class(subdatetable$Global_active_power) = "numeric"
plotone <- hist(subdatetable$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
with(subdatetable, plotone)
dev.copy(png, file = "plot1.png")
dev.off()