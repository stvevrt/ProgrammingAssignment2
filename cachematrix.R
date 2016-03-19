## These functions are for Programming Assignment 2 in the R programming class.
## Specifically, these functions will cache the inversion of a matrix.

## This function will create a special matrix containing functions to cache it's
## inverse.  It will actually contain a list with functions: 
## to set the value of a matrix
## to get the value of a matrix
## to set the value of the inverse
## to get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
     I<-NULL     
     set<-function(y){             ## this function sets variables x and I within 
          x<<-y                    ## makeCacheMatrix function
          I<<-NULL
     }
     get<-function() x
     setInverse<-function(inv) I<<-inv  #sets I to inv within makeCacheMatrix
     getInverse<-function() I           #return inverse
     list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}

# Solve for Inverse of matrix. If Inverse already known, return Inverse from cache
cacheSolve <- function(x, ...) {

     I<-x$getInverse()
     if(!is.null(I)){
          message("Getting cached data")
          return(I)
     }
     data<-x$get()
     I<-solve(data, ...)
     x$setInverse(I)
     I
}
