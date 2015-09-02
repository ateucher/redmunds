#' get a list of all car makes
#'
#' @return A character vector of car makes
#' @export
get_makes <- function() {
  req <- makes_GET(make = 'makes')
  ret <- edmunds_parse(req)
  makes <- extract_makes(ret)
  makes
}

makes_GET <- function(make = 'makes') {
  edmunds_GET(path = makes_path(make))
}

makes_path <- function(make) {
  paste0(vehicle_path(), make)
}

extract_makes <- function(makes_list) {
  vapply(makes_list$makes, function(x) x$name, FUN.VALUE = character(1))
}


