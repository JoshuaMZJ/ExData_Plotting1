Plot1<-function(){
source("readTable.R")  ##Read data from table
GAP<-DT2$Global_active_power
##Create png file & draw chart.
png("plot1.png")
hist(GAP,col="red",xlab="Global Active power (kilowatts)",main="Global Active Power")  ##Create Base chart, histogram.
dev.off()
}