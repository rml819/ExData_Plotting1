#Time series plot of energy usage across various sections of the house.
#Sub_metering_1 corresponds to the kitchen, containing of mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). 
#Sub_metering_2 corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. 
#Sub_metering_3 corresponds to an electric water-heater and an air-conditioner. All measurements reflect watt-hour of active energy.

#Plot the x and y axis, lines, and then legend
plot(x = householdpower$Date_Time, y = householdpower$Sub_metering_1, type = "n", 
    xlab = "", ylab = "Energy sub metering")
lines(x = householdpower$Date_Time, y = householdpower$Sub_metering_1)
lines(x = householdpower$Date_Time, y = householdpower$Sub_metering_2, col = "red")
lines(x = householdpower$Date_Time, y = householdpower$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
    lty = 1, col = c("black", "red", "blue"))
