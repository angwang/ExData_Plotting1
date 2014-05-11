#Plot 1
d<-read.csv(pipe('egrep \'^Date|^[1-2]/2/2007\' household_power_consumption.txt'), header=T, sep=';')

png(filename = "plot1.png", width = 480, height = 480,
    units = "px", pointsize = 12, bg = "white")
hist(d$Global_active_power, col = "red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()