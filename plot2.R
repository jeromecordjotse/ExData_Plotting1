## read and clean data
source('init.R')

## plot active power against time
plot(dataSet$Global_active_power ~ dataSet$Time_stamp, type="l", ylab="Global Active Power(kilowatts)", xlab=NA)


#save plot
savePNG("plot2.png")