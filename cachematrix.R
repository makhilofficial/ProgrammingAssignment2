## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y = matrix()) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }
  
s <- makeCacheMatrix(matrix(c(4,5,6,7), 2, 2))



## Write a short comment describing this function

cacheSolve <- function(z, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    m <- z$getinverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- z$get()
    m <- solve(data)
    z$setinverse(m)
    m
  }
  
cacheSolve(s)
  

