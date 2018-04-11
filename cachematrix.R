## The below functions calculate the inverse of an invertible matrix and 
## caches the result

## The below function caches the result

makeCacheMatrix <- function(x = matrix()) {
     i <- NULL
     set <- function() {
          x <<- y
          i <<- NULL
     }
     get <- function() x
     seti <- function(invert) i <<- invert
     geti <- function() i
     list(set = set, get = get, seti = seti, geti = geti)
}


## The below function calculates the inverse of an invertible matrix

cacheSolve <- function(x, ...) {
     i <- x$geti()
     if (!is.null(i)) {
          message("Getting cached data")
          return(i)
     }
     data <- x$get()
     i <- solve(data)
     x$seti(i)
     i
}
