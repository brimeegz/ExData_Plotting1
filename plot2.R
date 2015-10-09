dat<-read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings = "?")
dat$Date<-as.Date(strptime(dat$Date,"%d/%m/%Y"))
dat<-dat[dat$Date<="2007-02-02" & dat$Date >= "2007-02-01",]
dat$timetemp <- paste(dat$Date, dat$Time)
dat$Time <- strptime(dat$timetemp, format = "%Y-%m-%d %H:%M:%S")
dat$Global_active_power<-as.numeric(dat$Global_active_power)
plot(dat$Time,dat$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.copy(png,'plot2.png')
dev.off()

