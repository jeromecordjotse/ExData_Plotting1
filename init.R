  library(dplyr);
## function to calculate memory of dataset
memoryReq <- function(rows, cols){
  RAM <- (as.numeric(rows) * as.numeric(cols) *8)/ 2^20 # in MB
  return(list(MB=round(RAM,2),GB=round(RAM/2^10,2)))
}



##function to read and clean file
readFileInto <- function(){
  if(!file.exists('./data/household_power_consumption.txt')){ ## Download and
    if(!file.exists('./data.zip')){  ## unzip if dataset !exists
      download.file('https://raw.githubusercontent.com/jeromecordjotse/ExData_Plotting1/master/data.zip',destfile = './data.zip')
    }
    unzip('./data.zip',exdir = "./")
  }
  dataSet <<- read.table('./data/household_power_consumption.txt', sep = ";", header=TRUE, na.strings = "?")
  dataSet <<- dataSet[complete.cases(dataSet),]
  dataSet$Date <<-as.Date(dataSet$Date,"%d/%m/%Y")
  dataSet <<- filter(dataSet,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))
  dataSet$Date <<- as.POSIXct(strptime(paste(dataSet$Date, dataSet$Time), "%Y-%m-%d %H:%M:%S"))
  dataSet <<- rename(dataSet,Time_stamp=Date)
  dataSet <<- dataSet[,-2]
}

# function to save plots
savePNG <- function(fileName){
  ## Saving to PNG
  dev.copy(png, file=fileName, height=480, width=480)
  dev.off()
}
computerRAM = 8
if(memoryReq(2075259,9)$GB>computerRAM/10){
  stop("File too large",call. = TRUE)
}

if(!exists("dataSet")){
  readFileInto()
}else if(nrow(dataSet)>3000&ncol(dataSet)!=8){
  readFileInto()
}
