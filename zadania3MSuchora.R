f1 <- function(a,n){
  stopifnot(is.numeric(n)&&is.numeric(a))
  i <- 1
  w <- a
  while(i<n){
    w <- w*a
    i <- i+1
  }
  w
}


f2 <- function(x){
  w <- 0
  a<- length(x)
  for(i in 1:a){
    w <- w+ abs(x[i])
  }
  w
}

f3 <- function(n){
  w <- 0
  for(i in 1:n){
    if(n%%i==0){
      w <- w+1
    }
    i<- i+1
  }
  w
}