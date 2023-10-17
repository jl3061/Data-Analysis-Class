#'@title Converter
#'@param Lon longitudes to be converted
#'@param Lat latitudes to be converted
#'@param Date change dates to YYYY-MM-DD format
#'@export

converter <- function(lon, lat, date) {
  
  if (missing(date)){
    
    degree_lon <- sapply(strsplit(data[[lon]], "°"), "[[", 1)
    degree_lon <- as.numeric(gsub("°", "", degree_lon))
    minute_lon <- sapply(strsplit(data[[lon]], "°"), "[[", 2)
    minute_lon <- as.numeric(gsub("'W", "", minute_lon))/60
    
    new.lon <- -degree_lon - minute_lon
    
    degree_lat <- sapply(strsplit(lat, "°"), "[[", 1)
    degree_lat <- as.numeric(gsub("°", "", degree_lon))
    minute_lat <- sapply(strsplit(lat, "°"), "[[", 2)
    minute_lat <- as.numeric(gsub("'N", "", minute_lon))/60
    
    new.lat <- -degree_lat - minute_lat
    
    new_data <- data.frame(new.lon, new.lat)
    
  }else{
    
    degree_lon <- sapply(strsplit(lon, "°"), "[[", 1)
    degree_lon <- as.numeric(gsub("°", "", degree_lon))
    minute_lon <- sapply(strsplit(lon, "°"), "[[", 2)
    minute_lon <- as.numeric(gsub("'W", "", minute_lon))/60
    
    new.lon <- -degree_lon - minute_lon
    
    degree_lat <- sapply(strsplit(lat, "°"), "[[", 1)
    degree_lat <- as.numeric(gsub("°", "", degree_lon))
    minute_lat <- sapply(strsplit(lat, "°"), "[[", 2)
    minute_lat <- as.numeric(gsub("'W", "", minute_lon))/60
    
    new.lat <- -degree_lat - minute_lat
    
    new.date <- as.Date(date, "%d-%B-%y")
    
    new_data <- data.frame(new.lon, new.lat, new.date)
  }
  return(new_data)
}