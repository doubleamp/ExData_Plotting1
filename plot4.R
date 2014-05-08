#
# plot4.R
#
# Amperio, 2014-05-09
#
# Exercise for the first 'Course Project' of the 'Exploratory Data Analysis' course in Coursera
#
# Purpose: read some data and plot four graphs in the same image as requested in the exercise
#

# 1: Read the data from the compressed file, using the auxiliary script:
source("plots-auxiliar-read_data.R")

# 2: Open the file to output the image:
png(filename = "plot4.png")

# 3: Specify the graph lattice in the image:
par(mfrow = c(2, 2))

# 4: Create the actual graphs:
plot(data$FullTime, data$Global_active_power, xlab = "", ylab = "Global Active Power", type ="l", col = "black")   # First graph, a simple time series
plot(data$FullTime, data$Voltage, xlab = "datetime", ylab = "Voltage", type="l")  # Second graph, another time series
plot(data$FullTime, data$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type ="l", col = "black")   # Third graph, first series, in black color
lines(data$FullTime, data$Sub_metering_2, col = "red")   # Third graph, second series, in red color
lines(data$FullTime, data$Sub_metering_3, col = "blue")   # Third graph, third series, in blue color
legend("topright", legend = names(data[,7:9]), lty=1, bty = "n", col=c("black", "red", "blue"))   # Third graph legend
plot(data$FullTime, data$Global_reactive_power, xlab = "", ylab = "Global_reactive_Power", type ="l", col = "black")   # Fourth graph, another simple time series

# 5: Close the file
dev.off()

# 6: Remove the data from memory:
rm(data)
rm(data.names)