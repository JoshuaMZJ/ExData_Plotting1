Plot2<-function(){
source("readTable.R")  ##Read data from table
##Create png file & draw chart.
png("plot2.png")
with(DT2,plot(Time,Global_active_power,ylab="Global Active power (kilowatts)",type="l",xlab=NA))  ##Create Base chart
dev.off()
}