plot4 <- function(data) {
    png("plot4.png", width = 480, height = 480)
    par(mfrow=c(2,2))
    
    plot(data$Date, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
    
    plot(data$Date, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
    
    plot(data$Date, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
    lines(data$Date, data$Sub_metering_2, col="red")
    lines(data$Date, data$Sub_metering_3, col="blue")
    legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = "n")
    
    plot(data$Date, data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
    
    dev.off()
}