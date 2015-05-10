epc_data<-read.csv("./Electric_power_consumption.csv")
png(filename = "plot3.png")
plot(epc_data$Sub_metering_1, type="n",
     ylab="Energy sub metering", xaxt = "n", xlab="")
lines(epc_data$Sub_metering_1, type="l")
lines(epc_data$Sub_metering_2, type="l", col="red")
lines(epc_data$Sub_metering_3, type="l", col="blue")
axis(1, at=seq(1, 2880, 1439), labels=c("Thu", "Fri", "Sat"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       , lty = 1, col = c("black", "red", "blue"), border = "black", cex=0.75)
dev.off()