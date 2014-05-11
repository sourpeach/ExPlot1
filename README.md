#Exploratory Data Analysis: Course Project 1

Instructions for the project:  https://github.com/rdpeng/ExData_Plotting1

Recreating 4 graphs shown in above link 

*Reading and the subsetting the original data to the data needed for plotting was done in subsetdate.R*

__Code files to the 4 graphs:__

plot1.R - plot1.png

plot2.R - plot2.png

plot3.R - plot3.png

plot4.R - plot4.png


__Code explanation:__

1. Download data from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

2. Read table between 2007-02-01 and 2007-02-02

3. Initialize graphic device

4. Plot graph 
  1. plot1 - histogram with x = Global Active Power
  2. plot2 - convert date into POSIXct class then plot out Global Active Power according to date
  3. plot3 - plot lines for Sub_metering_1, Sub_metering_2, and Sub_metering_3, add legend 
  4. plot4 - set layout, then plot out 4 plots including plots from plot2 and plot3
  
5. Close off or copy png file to apropriate names