dat<-read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings = "?")
dat$Date<-as.Date(strptime(dat$Date,"%d/%m/%Y"))
dat<-dat[dat$Date<="2007-02-02" & dat$Date >= "2007-02-01",]
dat$Global_active_power<-as.numeric(dat$Global_active_power)
hist(dat$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png,'plot1.png')
dev.off()