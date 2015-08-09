# Reads and filters the data from the source file. It takes the path
# to the source file as the only argument. The return value should be
# passed to the various plot functions.
readData <- function (path = "household_power_consumption.txt") {
    data <- read.csv(path, sep = ";",
                     colClasses = c("character", "character", "character",
                                    "character", "character", "character",
                                    "character", "character", "character"))
    
    data$Date <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
    #data$Date <- as.Date(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
    
    data$Global_active_power <- as.numeric(data$Global_active_power)
    data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
    data$Voltage <- as.numeric(data$Voltage)
    data$Global_intensity <- as.numeric(data$Global_intensity)
    data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
    data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
    data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)
    
    filtered <- data[data$Date >= strptime("2007-02-01 00:00:00", "%Y-%m-%d %H:%M:%S") & data$Date <= strptime("2007-02-02 23:59:59", "%Y-%m-%d %H:%M:%S"),]
    
    filtered
}


