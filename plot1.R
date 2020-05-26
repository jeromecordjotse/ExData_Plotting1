## read and clean data
source('init.R')

if(!exists("for4")){
    par(mfcol=c(1,1))
}else if(!for4){
    par(mfcol=c(1,1))
}
## plot red histogram 
hist(dataSet$Global_active_power, main="Global Active Power", xlab="Global Active Power(kilowatts)", col = "red")


#save plot
savePNG("plot1.png")