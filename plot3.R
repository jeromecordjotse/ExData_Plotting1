## read and clean data
source('init.R')

if(!exists("for4")){
    par(mfcol=c(1,1))
}else if(!for4){
    par(mfcol=c(1,1))
}

## plot combined plot 
plot(dataSet$Sub_metering_1 ~ dataSet$Time_stamp, type = "n", ylab="Energy sub metering", xlab=NA)
lines(dataSet$Sub_metering_1 ~ dataSet$Time_stamp, col="black")
lines(dataSet$Sub_metering_2 ~ dataSet$Time_stamp, col="red")
lines(dataSet$Sub_metering_3 ~ dataSet$Time_stamp, col="blue")
if(!exists("for4")){
  legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
}else if(!for4){
  legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
}


#save plot
savePNG("plot3.png")