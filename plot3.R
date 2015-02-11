setwd("D:/R/ExData_Plotting1")

## Getting full dataset
mydata <-read.delim("D:/R/exdata1/household_power_consumption.txt",sep = ";",na.strings = "?")

## Subsetting & Converting
mydata2007 <- mydata[mydata$Date=="1/2/2007" |mydata$Date=="2/2/2007" ,]
mydata2007$Datetime <- strptime(paste(mydata2007$Date,mydata2007$Time),format = "%d/%m/%Y%H:%M:%S")

## Plotting & Saving png file 
png("plot3.png",480,480)
with(mydata2007,{
  plot(Datetime,Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering")
  lines(Datetime,Sub_metering_2,col = "red")
  lines(Datetime,Sub_metering_3,col = "blue")
})
legend("topright",lwd = 1,col = c("black","red","blue"), legend = c( "sub_metering1", "sub_metering2","sub_metering3"))
dev.off()

setwd("..")
