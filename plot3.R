
# before running this program, run Homework1.R one time.  It will
# download data from the URL specified in the homework instructions
# and process the data into a clean form read for analysis

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

 

