##Zadanie 1
a <- 1:20
b <- 20:1
c <- c(1:20,19:1)
d <- c(4,6,3)
tmp <- d
e <- rep(tmp, 10)
f <- rep(e,4)
g <- rep(d,c(10,20,30))


##zadanie 2
x <- seq(from=3, to=6, by=0.1)
z2 <- exp(x)*cos(x)

##Zadanie 3
t1 <- seq(from=3, to=36, by=3)
t2 <- t1-2
z3a <-(0.1^t1)*(0.2^t2)

t3<-1:25
z3b <-2^t3/t3 

#Zadanie 4
#a)
i <- 10:100
ii <- i^3+4*i^2
z4a <- sum(ii)
#b
ib=1:25
iib=(2^ib/ib)+(3^ib/ib^2)
t4b=sum(iib)

#Zadanie 5
t5 <- 1:30
z5a <-paste("label", t5)
z5b <- paste("fn", t5, sep="")

#Zadanie 6
set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)
#a
z6 <-yVec[2:250]-xVec[1:249]
#b
