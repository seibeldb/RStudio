#this program generates plot3.png.
#it will download and process the data, only if that has not been done already.
#if needed, source the program to get the data.
if (!(exists("tab.head"))) source("Homework1.R")

png(filename = 
    "plot3.png", width = 480, height = 480,bg = "white",  res = NA  )

 
#plot3
par(mfrow = c(1,1))
with(tab.head,{
        xlim<-range(dt)
        ylim<-range(c(Sub_metering_1,Sub_metering_2,Sub_metering_3))
        plot(Global_active_power ~ dt,type="n",xlab="",
             xlim=xlim,ylim=ylim,
             ylab="Energy sub metering")
        lines(dt,Sub_metering_1,col="black",type="l")
        lines(dt,Sub_metering_2,col="red",type="l")
        lines(dt,Sub_metering_3,col="purple",type="l")
        legend("topright", lty = 1, col = c("black", "red", "purple"), 
               legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
        )
})



dev.off()

 

