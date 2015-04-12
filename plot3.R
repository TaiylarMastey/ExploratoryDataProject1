setwd("C:/Users/C16Taiylar.Mastey/Desktop/Math 378/ExploratoryData")

dataset <- read.table("household_power_consumption.txt",skip=grep("1/2/2007", 
    readLines("household_power_consumption.txt")),nrows=2879,header=FALSE,sep=";",quote="",
     col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub-metering_3"))


datetime <- strptime(paste(dataset$Date, dataset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
sub1 <- as.numeric(dataset$Sub_metering_1)
sub2 <- as.numeric(dataset$Sub_metering_2)
sub3 <- as.numeric(dataset$Sub.metering_3)
png("plot3.png",width=480,height=480)
plot(datetime,sub1, ylab="Energy Submetering", xlab="",type="l")
lines(datetime, sub2, col="red",type="l")
lines(datetime, sub3, col="blue", type="l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"),lty=1)
dev.off()