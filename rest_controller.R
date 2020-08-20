#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#
# Based on tutorial here:
# https://www.youtube.com/watch?v=PPSuB-BAjTg

library(plumber)

#* @running_time_calc An API to calculate running time

#* Predict time of a longer run based on the time of a shorter run.
#* @param known_run_distance How far did you run
#* @param known_run_time  How many seconds did it take to run
#* @param predicted_run_distance How long do you want to run for
#* @param alpha What exponent do you want in Riegel's formula (default = 1.06)
#* @get /predicted_run_time

function(known_run_distance = -1,
         known_run_time = -1,
         predicted_run_distance = -1,
         alpha = 1.06
         ) {
    
    # Riegel's formula
    # predicted_run_time = known_run_time * (predicted_run_distance / known_run_distance) ^ alpha
    
    # 1) CHECK INPUTS EXIST

    
    # 2) CHANGE STRINGS TO NUMBERS
    known_run_time = as.numeric(known_run_time)
    known_run_distance = as.numeric(known_run_distance)
    predicted_run_distance = as.numeric(predicted_run_distance)
    alpha = as.numeric(alpha)
    
    # 3) COMPUTE CALCULATION
    predicted_run_time = known_run_time * (predicted_run_distance / known_run_distance) ^ alpha
    
    
    # 4) PREPARE TO OUTPUT
    list(predicted_run_time = predicted_run_time)
}