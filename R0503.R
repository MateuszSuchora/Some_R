#6
set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)

#Zadanie 6 a)
yVec[2:250]-xVec[1:249] -> a6

#6 b)
siny <- sin(yVec[1:249])
cosx <-cos(xVec[2:250])
siny/cosx -> b6

## 6 c)
c6 <- xVec[1:248]+2*xVec[2:249]-xVec[3:250]

## 6 d)
d6 <- sum(exp(-xVec[2:250])/(xVec[1:249]+10))

#Zadanie 7
#a
a7 <- yVec[which(yVec>600)]

#b
b7 <- which(yVec>600)

#c
c7 <-xVec[b7]

#d
xs <- mean(xVec)
d7 <- sqrt(abs(xVec-xs))

#e
e7 <- sum(xVec>max(xVec)-200)

#f
f7 <-sum(xVec%%2==0)

#g
g7 <- xVec[order(yVec)]

#h
h7 <- yVec[seq(from=1, by=3,to=250)]

##Zadnaie 8
n <- 1:19
m <- 2*n/(2*n+1)
z<- c(1,m)
x8 <-cumprod(z)


#Macierze
#1 a)
A<-matrix(c(1,5,-2,1,2,-1,3,6,-3),3)
zero <-matrix(0,nrow=3,ncol=3)
A3 <-A%*%A%*%A
z1a <-A3==zero

#b)
Aprim <-A
Aprim[,3]<-Aprim[,2]+Aprim[,3]

#zadanie2
kol1 <-rep(10,15)
kol2 <-rep(-10,15)
B <-cbind(kol1,kol2,kol1)
tB <-t(B)
z1b <-tB%*%B


