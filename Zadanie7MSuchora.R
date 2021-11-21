#1
max<-function(a,b){
  if(a>b) a
  else b
}
min<-function(a,b){
  if(a>b) b
  else a
}
rozw<-function(x){# funkcja do wyświetlania wyniku
  wynik<-c(x[1],x[2],min(x[1],x[2]),x[3],min(x[3],min(x[1],x[2])),x[4])
  rozw<-c()
  for(i in wynik){
    if(i==16)
      rozw<-c(rozw,"A")
    else if(i==8)
      rozw<-c(rozw,"B")
    else if(i==4)
      rozw<-c(rozw,"C")
    else
      rozw<-c(rozw,"D")
  }
  rozw
           

}
most<-function(){
  x=c(16,8,4,2)
  osoba=c("A","B","C","D")
  maks<-100000000000 #minimalny czas
  for(i in x){
    for(j in x){
      for(k in x){
        for(l in x){
          if(i!=j&&i!=k&&i!=l&&j!=k&&j!=l&&k!=l){
            suma<-max(i,j)+min(i,j)+max(k,min(i,j))+min(min(i,j),k)+max(l,min(min(i,j),k))
            if(suma<maks){
              maks<-suma
              rozw<-c(i,j,k,l)# kolejność w jakiej idą osoby przez most
            }
          }
        }
      }
    }
  }
  cat("minimalny czas:",maks,"\n")
  cat("kolejnosc:",rozw,"\n")
  rozw(rozw) #wynik czytamy po dwie litery jako kolejne pary
             
  
}



#2
#start ustawiamy na 1 a end na 
partition <-function(arr, start, end){
  pivot=arr[end]
  pIndex = start
  for (i in start:end){
    if (arr[i] < pivot)
    {
      pom<-arr[i]
      arr[i]<-arr[pIndex]
      arr[pIndex]<-pom
      pIndex<-pIndex+1
    }
  }
  pom<-arr[pIndex]
  arr[pIndex]<-arr[end]
  arr[end]<-pom
  pIndex
            
}
partition2 <-function(arr, start, end){
  pivot=arr[end]
  pIndex = start
  for (i in start:end){
    if (arr[i] < pivot)
    {
      pom<-arr[i]
      arr[i]<-arr[pIndex]
      arr[pIndex]<-pom
      pIndex<-pIndex+1
    }
  }
  pom<-arr[pIndex]
  arr[pIndex]<-arr[end]
  arr[end]<-pom
  arr
  
}

quicksort <- function(arr, start, end){
  stack<-c()
  top <- (-1)
  stack<-c(stack,start)
  top <- top+1
  stack<-c(stack, end)
  top <- top+1
  
  while(top>=0){
    
    end<-stack[length(stack)]
    top<-top-1
    stack<-stack[-length(stack)]
    
    start <-stack[length(stack)]
    top<-top-1
    stack<-stack[-length(stack)]
    
    pivot_index <- partition(arr,start, end)
    arr<-partition2(arr,start,end)
    
    if (pivot_index - 1 > start ){
      stack<-c(stack,start)
      top <- top+1
      stack <- c(stack,(pivot_index-1))
      top <- top+1
    }
    if (pivot_index + 1 < end){
      stack <- c(stack,(pivot_index+1))
      top <- top+1
      stack <- c(stack,end)
      top <- top+1
    }
    
  }
  arr
}