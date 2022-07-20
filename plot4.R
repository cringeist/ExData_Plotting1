hpc <- read.delim("data/household_power_consumption.txt", sep = ";")
data <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
png(filename = "plot4.png", width = 480, height = 480)
date_time <- strptime(paste(data$Date, data$Time, sep = " "), 
                      "%d/%m/%Y %H:%M:%S")
par(mfrow = c(2, 2))

plot(date_time, as.numeric(data$Global_active_power), pch = NA, xlab = "",
     ylab = "Global active power")
lines(date_time, as.numeric(data$Global_active_power))

plot(date_time, as.numeric(data$Voltage), xlab = "datetime", 
     ylab = "Voltage", pch = NA)
lines(date_time, as.numeric(data$Voltage))

plot(date_time, as.numeric(data$Sub_metering_1), ylab = "Energy sub metering",
    xlab = "", pch = NA)
lines(date_time, as.numeric(data$Sub_metering_1))
lines(date_time, as.numeric(data$Sub_metering_2), col = "red")
lines(date_time, as.numeric(data$Sub_metering_3), col = "blue")
legend("topright", col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lty = c(1, 1, 1), bty = "n")

plot(date_time, as.numeric(data$Global_reactive_power), 
     ylab = "Global_reactive_power", xlab = "datetime", pch = NA)
lines(date_time, as.numeric(data$Global_reactive_power))
dev.off()
