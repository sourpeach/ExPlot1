##Set working directory to where the file is located
setwd("~/ExploratoryData")

##Reading the data
file <- "household_power_consumption.txt"
library("data.table")
ffile <- fread(file)

##Extract and clean Date 
testdate <- ffile$Date
dates <- as.Date(testdate, format = "%d/%m/%Y")
ffile$Date <- dates

##two Dates needed for subsetting
date <- as.Date("2007-02-01")
date2 <- as.Date("2007-02-02")

##Get subset of data for the Dates needed
subdates <- ffile$Date == date | ffile$Date == date2
subdatetable <- ffile[subdates,]