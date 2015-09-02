#' get a list of all car makes
#'
#' @param key API key. If you have your own you can supply it, 
#'            otherwise the default package key will be used
#'
#' @return A data frame of car makes, with additional columns 'nice_name'
#'    and 'make_id' to use in other function calls
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
  rows <- lapply(makes_list$makes, function(x) {
    make = x$name 
    nice_name = x$niceName
    make_id = x$id
    data.frame(make, nice_name, make_id, stringsAsFactors = FALSE)
  })
  do.call('rbind', rows)
}


