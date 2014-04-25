## The goal of this function is to create
## a cached inverse of a matrix

## this creates a special matrix which returns a 
## list of functions

makeCacheMatrix <- function(x = matrix()) {
    cachedMatrix <- NULL
    
    set<- function(y){
        x<<-y
        cachedMatix <<- NULL
        
    }
    
    get <- function() x
    
    setMatrix <- function(solve) m
    
    getMatrix <- function() m
    
    list(set = set, get = get,
         setMatrix = setMatrix
         getMatix = getMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
