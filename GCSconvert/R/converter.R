#'@title Converter
#'@param Lon longitudes to be converted
#'@param Lat latitudes to be converted
#'@export

latlonconverter <- function(Lon, Lat) {
  parse_lon(Lon)
  parse_lat(Lat)
  
  return(df)
}