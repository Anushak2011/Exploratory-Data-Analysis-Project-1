source("load_data.R")

plot2 <- function(data=NULL) {
    if(is.null(data))
        data <- load_data()

df$Global_active_power <- as.numeric(as.character(df$Global_active_power))
        df <- transform(df, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
        
    png("plot2.png", width=400, height=400)
    
    plot(data$Time, data$Global_active_power,
         type="l",
         xlab="",
         ylab="Global Active Power (kilowatts)")
    
    dev.off()
}
