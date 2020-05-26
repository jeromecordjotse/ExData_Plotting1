## read and clean data
source('init.R')

if(!exists("for4")){
    par(mfcol=c(1,1))
}else if(!for4){
    par(mfcol=c(1,1))
}
## plot active power against time
plot(dataSet$Global_active_power ~ dataSet$Time_stamp, type="l", ylab="Global Active Power(kilowatts)", xlab=NA)


#save plot
savePNG("plot2.png")