plot2 <- function(data) {
    png("plot2.png", width = 480, height = 480)
    plot(data$Date, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
    dev.off()
}