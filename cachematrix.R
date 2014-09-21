## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    inv <- NULL
    
    setMatrix <- function(matrix){
        x <<- matrix
        inv <<- NULL
    }
    getMatrix <- function(){
        x
    }
    setInverse <- function(inverse){
        inv <<- inverse
    }
    getInverse <- function(){
        inv
    }
    
    
    
    ## return a list of methods
    list(setMatrix = setMatrix, 
         getMatrix = getMatrix, 
         setInverse = setInverse, 
         getInverse = getInverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    matrix <- x$getInverse()
    
    if(!is.null(matrix)){
        message("")
        return( matrix )
    }
    
    data <- x$getMatrix()
    
    ## matrix multiplication
    matrix <- solve(data) %*% data
    
    x$setInverse(matrix)
    
    ## return matrix
    matrix
}















