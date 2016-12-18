Plot4<-function(){
source("readTable.R")  ##Read data from table

png("plot4.png") ##Create png file & draw chart.

par(mfcol=c(2,2),mar=c(4,4,1,3),oma=c(0,0,0,0)) ## set device to display 2x2 charts; resize margin.

##1st Chart
with(DT2,plot(Time,Global_active_power,xlab=NA,ylab="Global Active power",type="l"))

##2nd Chart
with(DT2,{plot(Time,Sub_metering_1,ylab="Energy sub metering",type="n",xlab=NA);  
	  ##Add lines for each metering
          lines(Time,Sub_metering_1,col="black");
          lines(Time,Sub_metering_2,col="red");
          points(Time,Sub_metering_3,col="blue",type="l")
})
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")

##3rd Chart
with(DT2,plot(Time,Voltage,type="l",xlab="datetime",ylab="Voltage"))

##4th Chart
with(DT2,plot(Time,Global_reactive_power,type="l",xlab="datetime",ylab="Voltage"))

dev.off()


}