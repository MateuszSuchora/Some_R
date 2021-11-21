#za złe wyniki biore tyko takie które nie mają na początku litery lub mają wiecej niz jedna małpę,
#lub mają inna końsówkę niż .pl lub .com lub ta koncówka występuje kilkukrotnie
#takie zależności zauważyłem w przykładzie


replace_email<-function(x){
  library(stringi)
  malpa<-stri_extract_all_regex(x,"@")
  if(is.na(malpa)){
    malpa<-""
  }
  pl<-stri_extract_all_regex(x,".pl.|.pl")
  if(is.na(pl)){
    pl<-""
  }
  com<-stri_extract_all_regex(x,"(.com.)|(.com)")
  if(is.na(com)){
    com<-""
  }
  znak<-stri_sub(x,1,1)
  if(is.na(znak)){
    znak<-""
  }
  #print(pl==".pl") #test warunków
  #print(com==".com")
  #print(com)

  if(malpa=="@"&&(pl==".pl"| com==".com")&&!((pl==".pl"&& com==".com.")|(pl==".pl."&& com==".com"))&&stri_cmp_ge(znak,"a")&&stri_cmp_le(znak,"Z")){
    gdziemalpa<-stri_locate_first_fixed(x,"@")
    wynik<-stri_sub(x, 1,gdziemalpa[1])
    #print(wynik)
    wynik<-stri_join(wynik,"umcs.pl")
  }
  else{
    wynik<-""
  }
  wynik
}