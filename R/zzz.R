.onLoad <- function(libname, pkgnmae) {
  if (is.null(getOption("edmunds_api_key"))) {
    options(edmunds_api_key = "cr49wj6tarqn37j5w7hdqzuk")
  }
}

base_url <- function() 'https://api.edmunds.com/'

vehicle_path <- function() 'api/vehicle/v2/'

edmunds_key <- function() getOption("edmunds_api_key")

edmunds_GET <- function(path, ..., key = edmunds_key()) {
  q <- list(..., fmt = "json", api_key = key)
  req <- GET(base_url(), path = path, query = q)
  edmunds_check(req)
  req
}

edmunds_check <- function(req) {
  if (req$status_code < 400) return(invisible())
  message <- edmunds_parse(req)$message
  stop("HTTP failure: ", req$status_code, "\n", message, call. = FALSE)
}

edmunds_parse <- function(req) {
  text <- content(req, as = "text")
  if (identical(text, "")) stop("No output to parse", call. = FALSE)
  jsonlite::fromJSON(text, simplifyVector = FALSE)
}


