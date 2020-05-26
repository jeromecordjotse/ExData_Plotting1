## read and clean data
source('init.R')

## Format graph view into 2by2
par(mfcol=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
for4 <<- TRUE
## Plot 1 top-left
source('plot2.R')

## Plot 2 bottom-left

source('plot3.R')
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=1, bty="n", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
rm(for4)


## Plot voltage against time top-right
plot(dataSet$Voltage ~ dataSet$Time_stamp, type = "l", ylab="Voltage", xlab="datetime")

## Plot Global_reactive_power against time bottom-right
plot(dataSet$Global_reactive_power ~ dataSet$Time_stamp, type = "l", ylab=names(dataSet)[3], xlab="datetime")

#save plot
savePNG("plot4.png")

## restore mfcol
par(mfcol=c(1,1))
