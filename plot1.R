df<- read.table("F://JHU/household_power_consumption.txt", header = TRUE)
library(dplyr)
library(tidyr)
df<- df%>%
  separate(Date.Time.Global_active_power.Global_reactive_power.Voltage.Global_intensity.Sub_metering_1.Sub_metering_2.Sub_metering_3, c("Date", "Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity", 'Sub_metering_1', "Sub_metering_2","Sub_metering_3"), ";")
df$Global_active_power<- as.numeric(df$Global_active_power)
png("plot1.png")
hist(df$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
