#Plot 2
d<-read.csv(pipe('egrep \'^Date|^[1-2]/2/2007\' household_power_consumption.txt'), header=T, sep=';')
DateTime<-strptime(paste(d$Date, d$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png", width = 480, height = 480,
    units = "px", pointsize = 12, bg = "white")
plot(DateTime, d$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
