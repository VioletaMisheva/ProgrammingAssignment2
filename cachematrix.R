
##The first function creates a special matrix and calculates its inverse. It, in short, sets the matrix, gets ##the matrix, sets the inverse, and gets the inverse. 


## A function makeCacheMatrix for creating the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
m<-NULL   ##sets the inverse as a placeholder for a future value
set<-function(y){ ##defines a function to set a matrix x to a new one, y, and resets the inverse to NULL         
  x<<-y
  m<<-NULL
  }
get<-function() x ##function which returns the matrix x
setinv<-function(solve) m<<-solve ##a function which sets the inverse to the inverse of a matrix
getinv<-function() m ##return the inverse, m
list(set=set, get=get, setinv=setinv, getinv=getinv) 
}


## cacheSolve function first checks if the inverse of the special matrix has been calculated, if so, it caches ## it.If not, it gets the inverse of the matrix.


cacheSolve <- function(x, ...) {
m<-x$getinv()
if(!is.null(m)){
 message("Getting caches data")
 return(m)
 }
 data<-x$get()
 m<-solve(data, ...)
 x$setinv(m)
 m       
 }