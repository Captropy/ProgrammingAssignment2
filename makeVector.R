makeVector <- function(x = numeric()) {
  # The function, makeVector creates a special "vector", which is
  # really a list containing a function to
  # set the value of the vector
  # get the value of the vector
  # set the value of the mean
  # get the value of the mean
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}