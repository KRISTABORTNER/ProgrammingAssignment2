## Creates matrix object that can cache its inverse
makeCacheMatrix <- function( m = matrix() ) {
  
  ## Initialize the property
  i <- NULL
  
  ## setmatrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ## getmatrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  ##inversematrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ##getinversematrix
  getInverse <- function() {
    ## Return the inverse property
    i
  }
  
  ##returnmethods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Compute the inverse matrix returned by "makeCacheMatrix" above.
