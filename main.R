library(plumber)
plumber::plumb("rest_controller.R")$run(port = 80, host = "0.0.0.0")
