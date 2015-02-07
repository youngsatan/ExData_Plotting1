setwd("D:/R/ExData_Plotting1")
mydata <-read.delim("D:/R/exdata1/household_power_consumption.txt",sep = ";",na.strings = "?")
mydata2007 <- mydata[mydata$Date=="1/2/2007" |mydata$Date=="2/2/2007" ,]
mydata2007$Datetime <- strptime(paste(mydata2007$Date,mydata2007$Time),format = "%d/%m/%Y%H:%M:%S")
png("plot2.png",480,480)
plot(mydata2007$Datetime,mydata2007$Global_active_power,type = "l",xlab = "",ylab = "Globe Active Power(kilowatts)")
dev.off()
setwd("..")
