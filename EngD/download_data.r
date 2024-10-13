download_folder <- "C:/Kodingan2/FFdata/" #adjust this
# Choose an identifier (country code, tile ID, or SpatVector)
identifier <- "PER"  # does this work?
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
