kwota <- function(z,g){
  z1<-z
  while(z/10>1)
    z<-z%%10
  if(z==1){
      zl<-" złoty "
  }
  else if(z==2||z==3||z==4){
    zl<-" złote "
  }
  else{
    zl<-" złotych "
  }
  
  if(g==1){
    gr<-" grosz "
  }
  else if(g==2||g==3||g==4){
    gr<-" grosze "
  }
  else{
    gr<-" groszy "
  }
  wynik<-" "
  wynik <- cat(wynik,z1,zl," ",g," ",gr)
  
}

ile<-function(x,b){
  x1<-x
  w<-c()
#  l<-0
  wynik<-0
#  for(i in b){
#    x<-x1
#    l<-0
#    while(x-i>=0){
#      x<-x-i
#      l<-l+1
#    }
#    w<-c(w,l)
#  }

  for(i in b){
    x<-x1
    while(x-i>=0){
      x<-x-i
      
    if(x==0){
      wynik<-wynik+1
    }
    else if(i!=b[length(b)]&&x-i>0)
      wynik<-wynik+ile(i,b)

    }
  wynik
}
rozmienianie<-function(x,b){
    ile(x,b)+1
}
