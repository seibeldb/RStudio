#this program generates plot2.png.
#it will download and process the data, only if that has not been done already.
#if needed, source the program to get the data.
if (!(exists("tab.head"))) source("Homework1.R")

png(filename = 
    "plot2.png", width = 480, height = 480,bg = "white",  res = NA  )


#plot2
par(mfrow = c(1,1))
with(tab.head,plot(Global_active_power ~ dt, col="black",
                   ylab="Global Active Power (kilowatts)",xlab="", 
                   type="l"))


dev.off()

 

