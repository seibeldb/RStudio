
png(filename = "plot1.png", width = 480, height = 480,bg = "white",  res = NA  )
#plot 1
hist(tab.head$Global_active_power, col="red",
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
dev.off()


