#
# plot1.R
#
# Amperio, 2014-05-09
#
# Exercise for the first 'Course Project' of the 'Exploratory Data Analysis' course in Coursera
#
# Purpose: read some data and plot an histogram as requested in the exercise
#

# 1: Read the data from the compressed file, using the auxiliary script:
source("plots-auxiliar-read_data.R")

# 2: Open the file to output the histogram:
png(filename = "plot1.png")

# 3: Create the histogram as requested:
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")   # Actual histogram

# 4: Close the file
dev.off()

# 5: Remove the data from memory:
rm(data)
rm(data.names)