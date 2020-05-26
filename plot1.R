## read and clean data
source('init.R')

## plot red histogram 
hist(dataSet$Global_active_power, main="Global Active Power", xlab="Global Active Power(kilowatts)", col = "red")


#save plot
savePNG("plot1.png")