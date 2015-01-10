
# before running this program, run Homework1.R one time.  It will
# download data from the URL specified in the homework instructions
# and process the data into a clean form read for analysis

png(filename = 
    "plot2.png", width = 480, height = 480,bg = "white",  res = NA  )


#plot2
par(mfrow = c(1,1))
with(tab.head,plot(Global_active_power ~ dt, col="black",
                   ylab="Global Active Power (kilowatts)",xlab="", 
                   type="l"))


dev.off()

 

