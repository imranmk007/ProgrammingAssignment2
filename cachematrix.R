

## Purpose: Create a matrix object whose inverse value should be cached
## ---- STEPS ---- ##

# 1. makeCacheMatrix <- function(x = matrix()) 
# 2. set 'mat' single-equals to NULL
# 3. create a set function with parameter 'y' that sets x double-equal to y
#.      and sets 'mat' double-equal to null
# 3. create a get function that just returns x
# 4. create a setinverse function that takes 'solve' as a param and sets 'mat'
#.      double-equal to solve
# 5. create a getinverse function that just returns 'mat'
# 6. create a list with 'set=set, get=get, setinverse=setinverse, getinverse=getinverse'
#.      in the brackets

# Set the input as a matrix, then set the solved value as a null. Then changed every
#.   mention of "mean" to "inverse" or "solve"


makeCacheMatrix <- function(x = matrix()) {
    mat <- NULL
    set <- function(y) {
        x <<- y
        math <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) {
        mat <<- solve
    }
    getinverse <- funtion() mat
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}




## Purpose: Calculate the inverse of a vector that was created in the above function.
#.          However, if the inverse has already been calculated, just take it from the cache
#.          Otherwise, calculate the inverse of the data, setting the value of the inverse via setinverse

# Same as previous function. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    mat <- x$getinverse()
    if (!is.null(mat)) {
        message("getting cached data")
        return(mat)
    }
    
    data <- x$get()
    mat <- solve(data, ...)
    mat
}
