
## As the requirements state the purpose of this function is to create a special 
## function that is capable of caching its inverse.
##
## 
makeCacheMatrix <- function(x = matrix()) {
  # initiailise the cache matrix to be null
  cacheMatrix <- NULL
  put <- function(y) {
    x <<- y
    cacheMatrix <<- NULL
  }
  get <- function() x
  putMatrixInverse <- function(inverse) cacheMatrix <<- inverse
  getMatrixInverse <- function() cacheMatrix
  list(put = put, get = get,
       putMatrixInverse = putMatrixInverse,
       getMatrixInverse = getMatrixInverse)
}

## This function makes use of the caching function makeCacheMatrix and lexical
## scoping to try to reduce the computation load of calculating the inverse of 
## a matrix.
## 
## In the event that it has previously solved for the inverse of the matrix
## this function should skip making the calculation and return the inverse
## already residing in the cache.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}
