hpc <- read.delim("data/household_power_consumption.txt", sep = ";")
data <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
png(filename = "plot1.png", width = 480, height = 480)
hist(as.numeric(data$Global_active_power), main = "Global Active Power", 
     col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()
