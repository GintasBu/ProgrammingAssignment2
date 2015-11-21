## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## sets matrix into "special format", where the matix data 
## becomes accessible from different environment

makeCacheMatrix<-function (x=numeric()){
  
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setsolve<-function(solve) m<<-solve
  getsolve<-function() m
  list(set=set, get=get,
       setsolve=setsolve,
       getsolve=getsolve)
  
}


## Write a short comment describing this function

cacheSolve<-function(x,...){
  m<-x$getsolve()
  if(!is.null(m)){message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data, ...)
  x$setsolve(m)
  m
}

        ## Return a matrix that is the inverse of 'x'
## if the inverse for the same matrix was alrady calculated, 
##then the old result is being used, assuming the matrix is the same

