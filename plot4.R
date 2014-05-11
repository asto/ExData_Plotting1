source("get_data.R") # gets formatted, subsetted data in variable d

png("plot4.png")

par(mfrow=c(2,2))

plot(d$Date.Time, d$Global_active_power, type="l",
     xlab="", ylab="Global Active Power")

plot(d$Date.Time, d$Voltage, type="l",
     xlab="datetime",
     ylab="Voltage")

plot(d$Date.Time, d$Sub_metering_1, type="n",
     xlab="",
     ylab="Energy sub metering")
lines(d$Date.Time, d$Sub_metering_1, col="black")
lines(d$Date.Time, d$Sub_metering_2, col="red")
lines(d$Date.Time, d$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1), lwd=c(2.5,2.5,2.5), col=c("black", "red", "blue"),
       bty="n", cex=0.75)

plot(d$Date.Time, d$Global_reactive_power, type="l",
     xlab="datetime",
     ylab=  "Global_reactive_power")

dev.off()