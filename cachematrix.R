## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	## set the clear the valkue of inv and set the matrix to X
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	## set the inverse vale in x
	setinverse <- function(inverse) inv <<-inverse
	getinverse <- function() inv
	## creating list of function
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
		inv <- x$getinverse()
		## check whether inverse is called for cached matrix
		if(!is.null(inv)){
			message("printing cached data")
			return(inv)
		}
		## get the matrix from x, solve (inverse function) it and set the value back into x
		x$setinverse(solve(x$get()))
        ## Return a matrix that is the inverse of 'x'
}
