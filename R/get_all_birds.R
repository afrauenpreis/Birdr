#' Returns dataframe of bird name information including common name, scientific name, species code, family name...
#'
#' @param key The users eBird key
#'
#' @return dataframe of all bird name data
#'
#' @importFrom httr GET add_headers
#' @importFrom jsonlite fromJSON
#'
#' @export
get_all_birds <- function(key) {
  url <- "https://api.ebird.org/v2/ref/taxonomy/ebird"
  birds <- GET(url,
               add_headers("x-ebirdapitoken" = key),
               query = list(fmt = "json"))
  birds <- fromJSON(rawToChar(birds$content))
  birds
}
