# this program is the first of several programs used to complete
# homework assignment 1 in "Exploratory Data Analysis"
# it downloads the specified data and processes it into 
# a clean data file called tab.head.
# plots can be generated from this data by the following programs:
# screen plots - Homework1 testplots.R
# png plots - plot1.R, plot2.R, plot3.R, plot4.R


# the following R packages used
require(data.table)
library(data.table)
# define the URL and download the zip file per homework instructions
zipURL<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipFile<- download.file(zipURL, dest="household_power_consumption.zip",method="curl")
# unzip the file
unzip("./household_power_consumption.zip", overwrite = TRUE, exdir = "./", unzip="internal")

# per homework instruction suggestion, I subset the data before reading with R
# I examined the raw data file and 
# created a script using grep to select (feb 1 and 2 of 2007)
# the shell script was created with vi initially and called "./subset".
#  chmod 777 ./subset was used to make the script executable
# below I automate the process of creating the shell script.

#create a shell script that can extract the desired data
a1="grep '^[12]/2/2007' household_power_consumption.txt > feb-1and2-2007.txt"
a2="head -1 household_power_consumption.txt > colnames.txt"
a3="cat colnames.txt feb-1and2-2007.txt > proj1-input.txt"
cat(a1,"\n",a2,"\n",a3,file="subset.sh")
# make the script executable
system("chmod 777 subset.sh")
# the following command runs the subseting script from this R program
system("./subset.sh")

# read the data subset into R
tab.head2<-read.table("proj1-input.txt",sep=";",na.strings="?", header=TRUE)

# define a function "convdate" that converts this data into POSIXct values for time series plotting.
# first convert date from a factor to character "16/12/2006" day/month/year and
# then into POSIXct which is year/month/day 
# then into character year/month/day  
# then concatenate the date and time 
# then convert to POSIXct a number of seconds since 1970...

convdate<-function (d,t) {as.POSIXct(paste(as.character(strptime(as.character(d),"%d/%m/%Y")),t))}

# create a vector "dt" containing the POSIXct date values derived from each row in tab.head2.
# within tab.head2:  column 1 is the date and column 2 is the time.
# then column bind dt and tab.head2, creating tab.head

dt<-convdate(tab.head2[,1],tab.head2[,2])
tab.head<-cbind(tab.head2,dt)

# the data in tab.head is now ready for creating charts

# Code in "Homework1 testplots.R" creates plots on the screen
# png file plots are produced in separate files 
# named:  plot1.R, plot2.R, plot3.R, plot4.R
