hpc <- read.delim("data/household_power_consumption.txt", sep = ";")
data <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
png(filename = "plot2.png", width = 480, height = 480)
date_time <- strptime(paste(data$Date, data$Time, sep = " "), 
                      "%d/%m/%Y %H:%M:%S")
gap <- as.numeric(data$Global_active_power)
plot(date_time, gap, 
     ylab = "Global Active Power (kilowatts)", xlab = "", pch = NA)
lines(date_time, gap)
dev.off()
