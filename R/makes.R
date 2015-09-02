#' get a list of all car makes
#'
#' @param key API key. If you have your own you can supply it, 
#'            otherwise the default package key will be used
#'
#' @return A character vector of car makes
#' @export
get_makes <- function(key = getOption("edmunds_api_key")) {
  req <- makes_GET(make = 'makes', key = key)
  ret <- edmunds_parse(req)
  makes <- extract_makes(ret)
  makes
}

makes_GET <- function(make = 'makes', key) {
  edmunds_GET(path = makes_path(make), key = key)
}

makes_path <- function(make) {
  paste0(vehicle_path(), make)
}

extract_makes <- function(makes_list) {
  vapply(makes_list$makes, function(x) x$name, FUN.VALUE = character(1))
}


