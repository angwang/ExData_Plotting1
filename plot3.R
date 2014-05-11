#Plot 3
d<-read.csv(pipe('egrep \'^Date|^[1-2]/2/2007\' household_power_consumption.txt'), header=T, sep=';')
DateTime<-strptime(paste(d$Date, d$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png", width = 480, height = 480,
    units = "px", pointsize = 12, bg = "white")
plot(DateTime, d$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(DateTime, d$Sub_metering_2, type="l", col="red")
lines(DateTime, d$Sub_metering_3, type="l", col="blue")
legend("topright",col = c("black","blue", "red"),
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1))
dev.off()
