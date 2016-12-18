##Read in data into DT
DT<-read.table("household_power_consumption.txt",sep=";",na.string="?",header=TRUE,colClasses=c("character","character",rep("numeric",7)))

##Convert Date column to date class
DT$Time<-strptime(paste(DT$Date,DT$Time),"%d/%m/%Y %H:%M:%S") 
DT$Date<-as.Date(DT$Date,"%d/%m/%Y") 

##retrieve required dates and store in DT2
DT2<-subset(DT,DT$Date=="2007-02-01"|DT$Date=="2007-02-02")
