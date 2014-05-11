source("get_data.R") # gets formatted, subsetted data in variable d

png("plot1.png")

hist(d$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red")

dev.off()