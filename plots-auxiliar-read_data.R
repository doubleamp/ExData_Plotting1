#
# plots-auxiliar-read_data.R
#
# Amperio, 2014-05-09
#
# Exercise for the first 'Course Project' of the 'Exploratory Data Analysis' course in Coursera
#
# Purpose: read required data from the compressed file and leave in the environment for the plotting scripts to work on it
#

# 1: Read the data from the compressed file:
#   - Assuming that the compressed file is in the same directory than the script
#   - Assuming that the name of the compressed file is 'exdata_data_household_power_consumption.zip'
#   - Assuming that the file with the data, within the compressed file, is named 'household_power_consumption.txt'
#   - Obtaining the names of the files from the first row of the file, in an initial read
#   - Obtaining the relevant data for the plot from the rows numbers 66638 through 69517
data.names <- read.table(file = unz("exdata_data_household_power_consumption.zip", "household_power_consumption.txt"), sep = ";", nrows = 1, stringsAsFactors = FALSE)  # Obtains the names of the files
data <- read.table(file = unz("exdata_data_household_power_consumption.zip", "household_power_consumption.txt"), sep = ";", col.names = data.names, na.strings = "?", skip = 66637, nrows = 69518-66638, stringsAsFactors = FALSE)   # Obtains the actual data

# 2: Slightly transform the data, as suggested in the exercise:
data$FullTime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y%H:%M:%S")
