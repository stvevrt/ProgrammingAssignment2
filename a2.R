makeVector <- function(x = numeric()) {
     m <- NULL
     set <- function(y) {
          x <<- y
          m <<- NULL
     }
     get <- function() x
     setmean <- function(mean) m <<- mean
     getmean <- function() m
     list(set = set, get = get,
          setmean = setmean,
          getmean = getmean)
}

cachemean <- function(x, ...) {
     m <- x$getmean()
     if(!is.null(m)) {
          message("getting cached data")
          return(m)
     }
     data <- x$get()
     m <- mean(data, ...)
     x$setmean(m)
     m
}

myfunct<-function(){
     a<-c(1,2,5,4)
     b<-c(9,9,8)
     c<-c(11,13,15)
     m<-NULL
     d<-makeVector(a)
     # d is a list containing functions:
     # set <- function (y){
          #x<<-y         #assigns global value of x to y    
          #m<<-NULL}     #assigns global value of m to NULL
     # get<-function() x
     # setmean<-function(mean) m<<-mean  #assigns global value of me to mean
     print(d$get())
     print(m)
     m<-cachemean(d)
     print(m)
     m<-d$set(c)
     print(d$get())
     print(m)
     m<-cachemean(d)
     print(m)
     m<-cachemean(d)
     print(m)

}
     