#
# plot3.R
#
# Amperio, 2014-05-09
#
# Exercise for the first 'Course Project' of the 'Exploratory Data Analysis' course in Coursera
#
# Purpose: read some data and plot three time lines in the same graph as requested in the exercise
#

# 1: Read the data from the compressed file, using the auxiliary script:
source("plots-auxiliar-read_data.R")

# 2: Open the file to output the graph:
png(filename = "plot3.png")

# 3: Create the three time lines as requested:
plot(data$FullTime, data$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type ="l", col = "black")   # First series, in black color
lines(data$FullTime, data$Sub_metering_2, col = "red")   # Second series, in red color
lines(data$FullTime, data$Sub_metering_3, col = "blue")   # Third series, in blue color
legend("topright", legend = names(data[,7:9]), lty=1, col=c("black", "red", "blue"))   # Legend

# 4: Close the file
dev.off()

# 5: Remove the data from memory:
rm(data)
rm(data.names)