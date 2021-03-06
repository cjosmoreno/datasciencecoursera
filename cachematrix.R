##this function is going to simplify the way we obtain inverse matrix
##It will use tha cache method in order to save previuos results
##If exist previous results it wont calculate againg

## This function will create the cache matrix

makeCacheMatrix <- function(x = matrix()) {
              m=NULL
              set = function(y){
                x<<- y
                m<<-NULL
                }
            
                get= function() x
                setmean= function(solve) m <<- mean
                getmean= function() m
                list(set=set,get=get,setmean=setmean,getmean=getmean)
       
}


## This function is going to calculate the inverse and check if previuos calculate

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m= x$getmean()
       if (!is.null(m)){
                  message("getting cached data")
                  return(m)}
       data=x$get()
        m=solve(data,...) 
        x$setmean(m) 
        m
}
