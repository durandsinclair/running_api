# RUNNNING_API

## About the API
This API contains endpoints related to running.

### predicted_run_time
Predicts how long it will take you to run a distance given a known time for a 
different distance. It's based on [Peter Riegel's formula](https://en.wikipedia.org/wiki/Peter_Riegel).

## How to run this program
You can run main.R, which will open a swagger interactive page.

You can also run the Dockerfile as follows
```{r}
docker run --rm -p 80:80 running-api
```
and then opening a browser and going to this site
```{r}
http://127.0.0.1/predicted_run_time?alpha=1.06&predicted_run_distance=10&known_run_time=300&known_run_distance=1
```
which should return the predicted run time over 10 km when running 1km took 300
seconds.

## More information
More information on how to do this sort of thing can be found here:
https://medium.com/tmobile-tech/using-docker-to-deploy-an-r-plumber-api-863ccf91516d
