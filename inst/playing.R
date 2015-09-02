honda_crv_styles_2009 <- httr::GET("http://api.edmunds.com/api/vehicle/v2/honda/crv/2009/styles?fmt=json&api_key=cr49wj6tarqn37j5w7hdqzuk&view=full")

foo <- httr::GET("https://api.edmunds.com/api/vehicle/v2/styles/101077178/equipment?fmt=json&api_key=cr49wj6tarqn37j5w7hdqzuk&view=full")
bar <- jsonlite::fromJSON(httr::content(foo, as = "text"))
bar$equipment$attributes[[15]]
