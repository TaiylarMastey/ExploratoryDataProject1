setwd("C:/Users/C16Taiylar.Mastey/Desktop/Math 378/ExploratoryData")

dataset <- read.table("household_power_consumption.txt",skip=grep("1/2/2007", 
      readLines("household_power_consumption.txt")),nrows=2879,header=FALSE,sep=";",quote="",
      col.names = c("Date","Time","Golbal_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub-metering_3"))


png(filename = "plot1.png", width = 480, height = 480)
Plot1 <- dataset[,3]
hist(Plot1,col="red",xlab="Global Active Power (kilowatts)",main = "Global Active Power")
dev.off()

