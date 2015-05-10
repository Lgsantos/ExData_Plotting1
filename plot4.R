epc_data<-read.csv("./Electric_power_consumption.csv")
png(filename = "plot4.png")
par(mfcol=c(2,2))
# First Plot
plot(epc_data$Time, epc_data$Global_active_power, type="n",
     ylab="Global Active Power (kilowatts)", xaxt = "n")
lines(epc_data$Time, epc_data$Global_active_power, type="l")
axis(1, at=seq(1, 2880, 1439), labels=c("Thu", "Fri", "Sat"))

# Second Plot
plot(epc_data$Sub_metering_1, type="n",
     ylab="Energy sub metering", xaxt = "n", xlab="")
lines(epc_data$Sub_metering_1, type="l")
lines(epc_data$Sub_metering_2, type="l", col="red")
lines(epc_data$Sub_metering_3, type="l", col="blue")
axis(1, at=seq(1, 2880, 1439), labels=c("Thu", "Fri", "Sat"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       , lty = 1, col = c("black", "red", "blue"), border = "black", cex=0.75)

# Third Plot
plot(epc_data$Time, epc_data$Voltage, type="n",
     xlab="datetime", ylab="Voltage", xaxt = "n")
lines(epc_data$Time, epc_data$Voltage, type="l")
axis(1, at=seq(1, 2880, 1439), labels=c("Thu", "Fri", "Sat"))

# Fourth Plot
plot(epc_data$Time, epc_data$Global_reactive_power, type="n",
     xlab="datetime", ylab="Global_reactive_power", xaxt = "n")
lines(epc_data$Time, epc_data$Global_reactive_power, type="l")
axis(1, at=seq(1, 2880, 1439), labels=c("Thu", "Fri", "Sat"))

dev.off()
par(mfcol=c(1,1))