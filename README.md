<!-- README.md is generated from README.Rmd. Please edit that file -->
redmunds
========

An R package to get vehicle data from [Edumunds](http://www.edmunds.com/).

Installation
------------

``` r
# install.packages("devtools") # if not already installed
devtools::install_github("ateucher/redmunds")
```

Usage
-----

So far there is one simple working function: `get_makes()`, which returns a data frame of car makes available to query against.

``` r
library("redmunds")
get_makes()
#>             make     nice_name   make_id
#> 1     AM General    am-general 200347864
#> 2          Acura         acura 200002038
#> 3     Alfa Romeo    alfa-romeo 200464140
#> 4   Aston Martin  aston-martin 200001769
#> 5           Audi          audi 200000001
#> 6            BMW           bmw 200000081
#> 7        Bentley       bentley 200005848
#> 8        Bugatti       bugatti 200030397
#> 9          Buick         buick 200006659
#> 10      Cadillac      cadillac 200001663
#> 11     Chevrolet     chevrolet 200000404
#> 12      Chrysler      chrysler 200003644
#> 13        Daewoo        daewoo 200312185
#> 14         Dodge         dodge 200009788
#> 15         Eagle         eagle 200347865
#> 16          FIAT          fiat 200033022
#> 17       Ferrari       ferrari 200006023
#> 18        Fisker        fisker 200005745
#> 19          Ford          ford 200005143
#> 20           GMC           gmc 200007302
#> 21           Geo           geo 200347866
#> 22        HUMMER        hummer 200004021
#> 23         Honda         honda 200001444
#> 24       Hyundai       hyundai 200001398
#> 25      Infiniti      infiniti 200000089
#> 26         Isuzu         isuzu 200110731
#> 27        Jaguar        jaguar 200003196
#> 28          Jeep          jeep 200001510
#> 29           Kia           kia 200003063
#> 30   Lamborghini   lamborghini 200005922
#> 31    Land Rover    land-rover 200006582
#> 32         Lexus         lexus 200001623
#> 33       Lincoln       lincoln 200001777
#> 34         Lotus         lotus 200006242
#> 35          MINI          mini 200002305
#> 36      Maserati      maserati 200028029
#> 37       Maybach       maybach 200043087
#> 38         Mazda         mazda 200004100
#> 39       McLaren       mclaren 200051397
#> 40 Mercedes-Benz mercedes-benz 200000130
#> 41       Mercury       mercury 200007711
#> 42    Mitsubishi    mitsubishi 200002915
#> 43        Nissan        nissan 200000201
#> 44    Oldsmobile    oldsmobile 200249342
#> 45         Panoz         panoz 200194838
#> 46      Plymouth      plymouth 200339126
#> 47       Pontiac       pontiac 200002634
#> 48       Porsche       porsche 200000886
#> 49           Ram           ram 200393150
#> 50   Rolls-Royce   rolls-royce 200005044
#> 51          Saab          saab 200074504
#> 52        Saturn        saturn 200004446
#> 53         Scion         scion 200006515
#> 54        Spyker        spyker 200046567
#> 55        Subaru        subaru 200004491
#> 56        Suzuki        suzuki 200001853
#> 57         Tesla         tesla 200018920
#> 58        Toyota        toyota 200003381
#> 59    Volkswagen    volkswagen 200000238
#> 60         Volvo         volvo 200010382
#> 61         smart         smart 200038885
```

Status
------

In development

License
-------

[MIT](LICENSE)
