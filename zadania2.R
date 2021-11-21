#1
det <- function(a11,a12,a21,a22){
  a11*a22-(a12*a21)
}
#2
f <- function(x){
  if(is.integer(x)){
    x%%3
  }
  else{
    stop("Argument nie jest liczba całkowita")
  }
}
#3
lineq <- function(a,b,c,d,e,f){
  if(a==0&&b==0&&d==0&&e==0){
    stop("Brak rozwiazan")
  }
  else{
    x=(c+(f*a*a*e/d))/a
    y=(-f*a*a*e)/(d*b)
  }
  c(x,y)
}
#4
eq2 <- function(a,b,c){
  delta<-b*b-4*a*c
  if(delta>0){
    x1<-(-b+sqrt(delta))/(2*a)
    x2<-(-b-sqrt(delta))/(2*a)
    rozw <- c(x1,x2)
    
  }
  else{ 
    if(delta==0){
      x1<- -b/(2*a)
      rozw <- x1
    }
    else{
      stop("Brak rozwiazan")
    }
  }
  rozw
  
}
  