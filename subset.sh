grep '^[12]/2/2007' household_power_consumption.txt > feb-1and2-2007.txt 
 head -1 household_power_consumption.txt > colnames.txt 
 cat colnames.txt feb-1and2-2007.txt > proj1-input.txt