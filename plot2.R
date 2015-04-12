setwd("C:/Users/C16Taiylar.Mastey/Desktop/Math 378/ExploratoryData")

dataset <- read.table("household_power_consumption.txt",skip=grep("1/2/2007", 
  readLines("household_power_consumption.txt")),nrows=2879,header=FALSE,sep=";",quote="",
   col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub-metering_3"))


datetime <- strptime(paste(dataset$Date, dataset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalactive <- as.numeric(dataset$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalactive,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
