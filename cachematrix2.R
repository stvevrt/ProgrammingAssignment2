## These functions are for Programming Assignment 2 in the R programming class.
## Specifically, these functions will cache the inversion of a matrix.

## This function will create a special matrix containing functions to cache it's
## inverse.

makeCacheMatrix <- function(x = matrix()) {
     I<-matrix(ncol=0,nrow=0)      ## I is matrix of length zero
     set<-function(y){             ## this function sets variables x and I within 
          x<<-y                    ## makeCacheMatrix function
          I<-matrix(ncol=0,nrow=0)
     }
     get<-function() x
     setInverse<-function(inv) I<<-inv  #sets I to inv within makeCacheMatrix
     getInverse<-function() I
     matrix(c(set,get,setInverse,getInverse),nrow=1,ncol=4,byrow=TRUE,
               dimnames=list("set","get","setInverse","getInverse"))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
