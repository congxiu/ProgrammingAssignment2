## Put comments here that give an overall description of what your
## functions do

## return a list of functions which can be used to get, set the
## the matrix and get, set the inverse of the matrix

makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  set_inverse <- function(inverse) inv <<- inverse
  get_inverse <- function() inv
  list(set = set, get = get, set_inverse = set_inverse, 
       get_inverse = get_inverse)
}

## return the cached inverse if it exists, else compute the inverse
## and return it

cacheSolve <- function(x, ...) {
        inv <- x$get_inverse()
        if(!is.null(inv)){
          message("getting cached data")
          return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        inv
}
