source("get_data.R") # gets formatted, subsetted data in variable d

png("plot2.png")

plot(d$Date.Time, d$Global_active_power, t="l",
     xlab="",
     ylab="Global Active Power (kilowatts)"
     )

dev.off()