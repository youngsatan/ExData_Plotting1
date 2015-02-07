setwd("D:/R/ExData_Plotting1")
mydata <-read.delim("D:/R/exdata1/household_power_consumption.txt",sep = ";",na.strings = "?")
mydata2007 <- mydata[mydata$Date=="1/2/2007" |mydata$Date=="2/2/2007" ,]
mydata2007$Datetime <- strptime(paste(mydata2007$Date,mydata2007$Time),format = "%d/%m/%Y%H:%M:%S")
png("plot4.png",480,480)
par(mfrow = c(2,2))

plot(mydata2007$Datetime,mydata2007$Global_active_power,
     type = "l",xlab = "",ylab = "Globe Active Power")

plot(mydata2007$Datetime,mydata2007$Voltage,
     type = "l",xlab = "",ylab = "Voltage")

with(mydata2007,{
  plot(Datetime,Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering")
  lines(Datetime,Sub_metering_2,col = "blue")
  lines(Datetime,Sub_metering_3,col = "red")
})
legend("topright",lwd = 1,col = c("black","blue","red"), legend = c( "sub_metering1", "sub_metering2","sub_metering3"))


plot(mydata2007$Datetime,mydata2007$Global_reactive_power,
     type = "l",xlab = "",ylab = "Global reactive power")

dev.off()
