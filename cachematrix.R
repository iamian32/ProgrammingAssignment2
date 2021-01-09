## this is a function in r studio created for assignment 2 in coursera
## the functions will solve the given matrix of your own input
## The content of this functions both contains solving for matrix
## with given proper matrix it will be able to solve its inverse
## it will store a matrix and after that it will caches its inverse
## the matrix value here is equals to ijk variable

## This function is an easy way to inverse your matrix

makeCacheMatrix <- function(x = matrix()) {
ijk <- NULL
set <- function(y){
  x <<- y
  ijk <<- NULL
}
get <- function()x
setInverse <- function(inverse) ijk <<- inverse
getInverse <- function() ijk 
list(set = set, 
     get = get, 
setInverse = setInverse, 
getInverse = getInverse)
}

## this one return the function matrix to its original x value

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ijk <- x$getInverse()
  if(!is.null(ijk)){
    message("getting cached data")
    return(ijk)
  }
  mat <- x$get()
  inj <- solve(mat,...)
  x$setInverse(ijk)
  ijk
}


