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
    
    setMatrix <- function(solve) cachedMatrix <<- solve
    
    getMatrix <- function() cachedMatrix
    
    list(set = set, get = get,
         setMatrix = setMatrix,
         getMatrix = getMatrix)
}


## function calculates the inverse of a matrix
## using the above cache matrix fucntion

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getMatrix()
    
    #checking to see if matrix is cached
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    #if the matrix is not cahced run the following
    data <- x$get()
    m <- solve(data) #solve the matrix
    x$setMatrix(m) #save the result back to cache
    m #return the result
}

