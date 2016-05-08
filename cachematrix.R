## makeCacheMatrix -
## creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  matinv <- NULL
  # function inside a function
  set <- function(y) {
    x <<- y
    matinv <<- NULL
  }
  # function inside a function for getting matrix
  get <- function() x
  # one-line function to invert the matrix with the solv function
  setsolv <- function(solve) matinv <<- solve
  # again a one line body of the function
  getsolv <- function() matinv
  # returning
  list ( set = set,
         get = get,
         setsolv = setsolv,
         getsolv = getsolv)
}


