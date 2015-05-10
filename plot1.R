epc_data<-read.csv("./Electric_power_consumption.csv")
png(filename = "plot1.png")
hist(epc_data$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()