Plot3<-function(){
source("readTable.R")  ##Read data from table

##Create png file & draw chart.
png("plot3.png")
with(DT2,{plot(Time,Sub_metering_1,ylab="Energy sub metering",type="n",xlab=NA);  ##Create Base chart
	  ##Add lines for each metering
          lines(Time,Sub_metering_1,col="black");
          lines(Time,Sub_metering_2,col="red");
          points(Time,Sub_metering_3,col="blue",type="l")
})
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
}