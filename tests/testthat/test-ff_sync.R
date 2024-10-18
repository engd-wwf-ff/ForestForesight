library(testthat)

# Mock input data (please adjust to your local path)
download_folder <- "C:/Kodingan3/FFdata/"
code_location <- "C:/Kodingan3/ForestForesight/"

test_that("ff_sync a tile, checking download_folder content, also check the use of config file in ff_sync", {

    library("devtools")
    load_all(code_location) # with this we are using the live R code, not the build package of ForestForesight

    # Choose an identifier (country code, tile ID, or SpatVector)
    identifier <- "00N_080W"  # does this work?
    #identifier <- shape # use this if you want to download the area that you click from "Loading Area of Intereset"

    # Call the ff_sync function
    ff_sync(
    ff_folder = download_folder,
    identifier = identifier,
    download_model = TRUE, #prediction models
    download_data = TRUE, #pre-processed data
    download_predictions = FALSE, #disable this if you don't want to download previous prediction
    verbose = TRUE
    )


  # assertion
  check_true(TRUE)
})
