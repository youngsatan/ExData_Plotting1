setwd("D:/R/ExData_Plotting1")
mydata <-read.delim("D:/R/exdata1/household_power_consumption.txt",sep = ";",na.strings = "?")
mydata2007 <- mydata[mydata$Date=="1/2/2007" |mydata$Date=="2/2/2007" ,]
mydata2007$Date <- as.Date(mydata2007$Date,"%d/%m/%Y")
png("plot1.png",480,480)
hist(mydata2007$Global_active_power,
     col = "red",
     main = "Globe Active Power", 
     xlab = "Globe Active Power(kilowatts)",
     ylim = c(0,1200))
dev.off()
setwd("..")