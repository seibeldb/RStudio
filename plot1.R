#this program generates plot1.png.
#it will download and process the data, only if that has not been done already.
#if needed, source the program to get the data.
if (!(exists("tab.head"))) source("Homework1.R")


png(filename = "plot1.png", width = 480, height = 480,bg = "white",  res = NA  )
#plot 1
hist(tab.head$Global_active_power, col="red",
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
dev.off()


