#
# plot2.R
#
# Amperio, 2014-05-09
#
# Exercise for the first 'Course Project' of the 'Exploratory Data Analysis' course in Coursera
#
# Purpose: read some data and plot a time line as requested in the exercise
#

# 1: Read the data from the compressed file, using the auxiliary script:
source("plots-auxiliar-read_data.R")

# 2: Open the file to output the time line:
png(filename = "plot2.png")

# 3: Create the time line as requested:
plot(data$FullTime, data$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type ="l")

# 4: Close the file
dev.off()

# 5: Remove the data from memory:
rm(data)
rm(data.names)