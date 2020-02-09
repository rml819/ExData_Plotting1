#Time series plots of global active power, global reactive power, voltage and sub_metering

#split into 4 plot regions
par(mfcol = c(2, 2))

#Global Active Power vs Time plot
plot(x = householdpower$Date_Time, y = householdpower$Global_active_power, type = "l", 
    xlab = "", ylab = "Global Active Power")

#Energy sub metering vs Time plot
plot(x = householdpower$Date_Time, y = householdpower$Sub_metering_1, type = "n", 
    xlab = "", ylab = "Energy sub metering")
lines(x = householdpower$Date_Time, y = householdpower$Sub_metering_1)
lines(x = householdpower$Date_Time, y = householdpower$Sub_metering_2, col = "red")
lines(x = householdpower$Date_Time, y = householdpower$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
    lty = 1, col = c("black", "red", "blue"), bty = "n", cex=0.5)

#Voltage vs Time plot
plot(x = householdpower$Date_Time, y = householdpower$Voltage, type = "l", xlab = "datetime", 
    ylab = "Voltage")

#Global_reactive_power vs Time plot
plot(x = householdpower$Date_Time, y = householdpower$Global_reactive_power, 
    type = "l", xlab = "datetime", ylab = "Global Reactive Power")
