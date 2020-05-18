## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Changed the mean to solve and everything pretty much remains the same
##We only have to have make small changes in terms of what functions need to be passed
##And not much else


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
##Same in this case, the only difference is the functions to be passed
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- sove(data, ...)
  x$setsolve(m)
  m
}
