# Download "Individual household electric power consumption Data Set" if not
# already in the current working directory
if (!file.exists("household_power_consumption.txt")){
  download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                destfile="getdata-projectfiles-UCI HAR Dataset.zip")
  unzip("getdata-projectfiles-UCI HAR Dataset.zip")
}

# Read data, format dates and times, and subset required dates
d <- read.table("household_power_consumption.txt", sep=";", header=T,
                colClasses=c("character", "character", "numeric", "numeric",
                             "numeric", "numeric", "numeric", "numeric",
                             "numeric"),
                na.strings="?")
d$Date.Time <- strptime(paste(d$Date, d$Time, sep=" "), format="%d/%m/%Y %T")
d$Date <- as.Date(d$Date, format="%d/%m/%Y")
d <- subset(d, d$Date %in% as.Date(c("2007-02-01", "2007-02-02")))