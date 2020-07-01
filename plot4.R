par(mfrow = c(2, 2))
## plot 1
plot(finalData$SetTime, finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")

##plot 2
plot(finalData$SetTime, finalData$Voltage, type="l", col="black", ylab="Voltage", xlab="dateTime")

## plot 3
columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(finalData$SetTime, finalData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(finalData$SetTime, finalData$Sub_metering_2, type="l", col="red")
lines(finalData$SetTime, finalData$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=columnlines)

## plot 4
plot(finalData$SetTime, finalData$Global_reactive_power, type="l", col="black", ylab="Global_reactive_power", xlab="dateTime")

dev.copy(png, file = "plot4.png") 
dev.off()




