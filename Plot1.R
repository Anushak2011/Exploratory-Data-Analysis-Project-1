source("load_data.R")

plot1 <- function(data=NULL) {
    if(is.null(data))
        data <- load_data()
      power <- read.table(file, header=T, sep=";")
    power$Date <- as.Date(power$Date, format="%d/%m/%Y")
    png("plot1.png", width=400, height=400)
    
    hist(data$Global_active_power,
         main="Global Active Power",
         xlab="Global Active Power (kilowatts)",
         ylab="Frequency",
         col="red")
    
    dev.off()
}
