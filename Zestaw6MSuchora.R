trojkat<-function(n){
  for(i in 1:n){
    for(j in 1:(n-i)){
      if(i!=n){
        cat(" ")
      }
    }
    for(j in 1:(2*i-1)){
      cat("*")
    }
    cat("\n")
  }
}

collatz <- function(n){
  w<-c()
  for(i in 1:n){
    licz<-1
    n1 <- i
    while(n1!=1){
      if(n1%%2==0){
        n1<-n1/2
      }
      else{
        n1<- 3*n1+1
      }
      licz<-licz+1
    }
    w<-c(w,licz)
  }
  print(w)
}