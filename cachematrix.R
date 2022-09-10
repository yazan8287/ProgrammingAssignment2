## ProgrammingAssignment2-si im set variable x as and the solved value as ("m") and chabging the referance
source("cachematrix.R")
my_matrix <- makeCacheMatrix(matrix(1:12, 4, 3))
my_matrix$get()
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set,
       get = get,
       setrmean = setmean,
       getmean = getmean)
}





cacheSolve <- function(x, ...) {
  ## Return a matrix that is the mean from above of 'x'
  m <- x$getmean()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  mat <- x$get()
  m <- solve(mat, ...)
  x$setmean(m)
  m
}


