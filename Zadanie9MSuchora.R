oceny<-function(daneWe,oceny){
  setwd("~/RR") #dane znajdować się muszą w podfolderze RR folderu domyślnego
  library(stringi)
  input<-stri_join(daneWe,".csv2")
  outputt<-stri_join(oceny,".csv2")
  dane<-read.csv2(input)
  imiona<-as.vector(dane$imię)
  nazwiska<-as.vector(dane$nazwisko)
  s1<-dane$spr1
  s2<-dane$spr2
  s3<-dane$spr3
  srednie<-c()
  for(i in 1:length(s1)){
    x<-(s1[i]+s2[i]+s3[i])/3
    srednie<-c(srednie,x)
  }
  nakoniec<-c()
  for(i in 1:length(s1)){
    if(srednie[i]<2.9)  nakoniec<-c(nakoniec,"ndst")
    else if(srednie[i]<3.3)  nakoniec<-c(nakoniec,"dst")
    else if(srednie[i]<3.8)  nakoniec<-c(nakoniec,"dst+")
    else if(srednie[i]<4.3)  nakoniec<-c(nakoniec,"db")
    else if(srednie[i]<4.7)  nakoniec<-c(nakoniec,"db+")
    else  nakoniec<-c(nakoniec,"bdb")
    
  }
  output<-list(imiona,nazwiska,nakoniec)
  names(output)<-c("imie","nazwisko","ocena")
  write.csv2(output,outputt)
  
  
}