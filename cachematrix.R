## Clear workspace
rm(list = ls(all = TRUE))

##set path for assignment

pathASS2 <- "C:/Users/soliveri/Desktop/PhD/MOOCs/R Programming"

setwd(pathASS2)

##Assignment 2, Part 1

#Function that creates an object in matrix form that is able to cache its 
#inverse

#1: set value of matrix
#2: get value of matric
#3: set value of inverse
#4: get value of inverse

makeCacheMatrix <- function(x = matrix()) { 
        inv <- NULL
        set <- function(y) { 
            x <<- y
            inv <<- NULL
        }
        get <- function() x
        setinv <- function(inv) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get, 
             setinv = setinv,
             getinv = getinv)
    }
##Assignment 2, Part 2

#Function that returns the inverse of the matrx created with the previous 
#function; if inverse was already calculated, it gets the inverse from the cache

cacheSolve <- function(x, ...) {
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- inv(data, ...)
    x$setinv(inv)
    inv
}
