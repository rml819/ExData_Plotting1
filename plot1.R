file <- "household_power_consumption.txt"

#data processing
householdpower <- read.table(file, header = FALSE, sep = ";", skip = 1, colClasses = c(rep("character", 
    2), rep("numeric", 7)), na.strings = "?")
cnames <- readLines(file, 1)
cnames <- strsplit(cnames, ";", fixed = TRUE)
names(householdpower) <- cnames[[1]]
householdpower <- householdpower[householdpower$Date %in% c("1/2/2007", "2/2/2007"), ]

#formatting data
householdpower$Date_Time <- paste(householdpower$Date, householdpower$Time)
householdpower$Date_Time <- strptime(householdpower$Date_Time, "%d/%m/%Y %H:%M:%S")

#Histogram of household global minute-averaged active power (in kilowatt)
with(householdpower, hist(Global_active_power, main = "Global Active Power", 
    xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red"))
