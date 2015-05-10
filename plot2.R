epc_data<-read.csv("./Electric_power_consumption.csv")
png(filename = "plot2.png")
plot(epc_data$Time, epc_data$Global_active_power, type="n",
     ylab="Global Active Power (kilowatts)", xaxt = "n")
lines(epc_data$Time, epc_data$Global_active_power, type="l")
axis(1, at=seq(1, 2880, 1439), labels=c("Thu", "Fri", "Sat"))
dev.off()