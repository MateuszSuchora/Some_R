#zadzanie1 a)
A <- matrix(c(1,5,-2,1,2,-1,3,6,-3),3,3)
a=A%*%A%*%A
zero <- matrix(c(0),3,3)
zero == a
#b
AA <- matrix(c(1,5,-2,1,2,-1,3,6,-3),3,3,dimnames=list(c("r1", "r2","r3"), c("k1", "k2", "k3")))
AA[,3]=AA[,2]+AA[,3]

#Zadanie2
B <- matrix(c(rep(10,15),rep(-10,15),rep(10,15)),15,3)
Bt <- crossprod(B,B)

#Zadanie 3
k1 <-c(0,1,0,0,0,0)
k2 <-c(1,0,1,0,0,0)
k3 <-c(0,1,0,1,0,0)
k4 <-c(0,0,1,0,1,0)
k5 <-c(0,0,0,1,0,1)
k6 <-c(0,0,0,0,1,0)
C <-cbind(k1,k2,k3,k4,k5,k6)

#zadanie 4
x <- 0:4
y <- 0:4
D <-outer(x,y,"+")

#zadanie 5
#a
kol1<- 0:4
kol2 <-c(1:4,0)
kol3 <-c(2:4,0:1)
kol4 <-c(3:4,0:2)
kol5 <-c(4,0:3)
E<-cbind(kol1,kol2,kol3,kol4,kol5)
#wiem ¿e to ma byæ jakoœ inaczej ale nie wiem jak to zrobiæ

#zadanie6
L <- matrix(c(1:5,2,1,2,3,4,3,2,1,2,3,4,3,2,1,2,5:1),5,5)
P <- matrix(c(7,-1,3,5,17),5,1)
L1 <- solve(L)
Z6<-L1%*%P


#zadanie7 
set.seed(75)
aMat <- matrix( sample(10, size=60, replace=T), nr=6)
#test <- matrix(4,6,10)
#test2 <-aMat>=test
wynik <-which(aMat>4)
#b)
wynik2 <- which(aMat==7)%%6
#c)
wynik3 <- which(sum(aMat[,x])>75)

#Zadanie 8
#a)
i <-1:20
j <-1:5
a8<-sum(sum(i^4/(3+j)))

#b
b8<-sum(sum(i^4/(3+j*i)))

#c
ii <-1:10

c8 <-sum(sum(ii^4/(3+cumprod(ii))))
