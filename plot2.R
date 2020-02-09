#Time series plot of global minute-averaged active power (in kilowatt)
plot(x = householdpower$Date_Time, y = householdpower$Global_active_power, type = "l", 
    xlab = "", ylab = "Global Active Power (kilowatts)")
