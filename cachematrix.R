## The functions "makeCacheMatrix" and "cacheSolve" 

## makeCacheMatrix takes a matrix object and allows you to get and set the value of its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  # x = the matrix object
  # inv = the inverse matrix
  
  inv <- NULL
  set <- function(y){
    x <<- y 
    inv <<- NULL
  }
  
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## cacheSolve checks if the inverse of the makeCacheMatrix has been computed.
## If it hasn't, it will compute it. If it has, it will skip computing
## it again and return the cached inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getinverse()
  if(!is.null(inv)){
    message("Getting chached data...")
    return(inv)
  }
  message("No cache, computing inverse...")
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  return(inv)
}
