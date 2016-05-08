## cacheSolve - 
## computes the inverse of the matrix returned by makeCacheMatrix.
## If the inverse has already been calculated
## then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of the matrix 'x'
    matinv <- x$getsolv()
    if(!is.null(matinv)) {
      message("getting cached data")
      return(matinv)
    }
    data <- x$get()
    matinv <- solve(data, ...)
    x$setsolv(matinv)
    matinv
}
