
#You must run Homework1.R one time before running this code.
# this program uses tab.head to create plots 1-4 on the screen

#plot 1
par(mfrow = c(1,1))
hist(tab.head$Global_active_power, col="red",
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")

readline(prompt="hit return to continue ")

#plot2
par(mfrow = c(1,1))
with(tab.head,plot(Global_active_power ~ dt, col="black",
                   ylab="Global Active Power (kilowatts)",xlab="", 
                   type="l"))

readline(prompt="hit return to continue ")

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

readline(prompt="hit return to continue ")

#plot4
par(mfrow = c(2, 2))

#plot 4a
with(tab.head,plot(Global_active_power ~ dt, col="black",
                   ylab="Global Active Power",xlab="", 
                   type="l"))

#plot4b
with(tab.head,plot(Voltage ~ dt, col="black",
                   xlab="datetime", 
                   type="l"))

#plot4c
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
               bty="n",
               legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
        )
})

#plot4d
with(tab.head,plot(Global_reactive_power ~ dt, col="black",
                   ylab=,xlab="datetime", 
                   type="l"))

