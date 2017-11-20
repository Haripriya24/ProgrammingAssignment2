## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 
## The above "makeCacheMatrix" function is creating a "matrix" object that can calculate its inverse
          i <- NULL      ## initialized i as NULL, which will have the matrix inverse value
        set <- function(y){     ## "set" function is defined here 
                x <<- y         ## new matrix "y" value is assigned to "x" matrix 
                i <<- NULL      ## "i" will be reset to NULL if there is a new matrix
                }
        get <-function() x      ## "get" function is defined so that it returns value of matrix
        setinverse <- function(inverse) i <<- inverse ## assign value of "i" in the main function
        getinverse <- function() i      ## when "i" is called this function will help get the inverse matrix value
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) 
        ## "list" will help to refer all these functions using $operator (as shown in swirl practise)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...)
## The "cacheSolve" function is for computing the inverse of the "matrix" which is returned by the above function "makeCacheMatrix"
{
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
