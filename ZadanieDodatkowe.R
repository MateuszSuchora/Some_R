setwd("~/RR")#katalog w którym umieszczam csv
#wszystkie dane które były dostępne w dniu robienia zadania
covid<-read.csv2("covid_dane.csv2")
zakazenia<-covid$zakażeni
zakCauchy<-ks.test(zakazenia,pcauchy)
zakChi<-chisq.test(zakazenia)
zakWykladniczy<-ks.test(zakazenia, pexp)
zakNormalny<-shapiro.test(zakazenia)
dzienne<-covid$zachorowania.dzienne
dzCauchy<-ks.test(dzienne,pcauchy)
dzChi<-chisq.test(dzienne)
dzWykladniczy<-ks.test(dzienne, pexp)
dzNormalny<-shapiro.test(dzienne)
plot(zakazenia,type="l")
wyleczeni<-covid$wyleczeni
wylCauchy<-ks.test(wyleczeni,pcauchy)
wylChi<-chisq.test(wyleczeni)
wylWykladniczy<-ks.test(wyleczeni, pexp)
wylNormalny<-shapiro.test(wyleczeni)
chorzy<-covid$chorzy
choCauchy<-ks.test(chorzy,pcauchy)
chokChi<-chisq.test(chorzy)
choWykladniczy<-ks.test(chorzy, pexp)
choNormalny<-shapiro.test(chorzy)
zgony<-covid$zgony
zgoCauchy<-ks.test(zgony,pcauchy)
zgoChi<-chisq.test(zgony)
zgoWykladniczy<-ks.test(zgony, pexp)
zgoNormalny<-shapiro.test(zgony)

#Wyniki i wnioski:
#tylko dla liczby chorych p wartość dla testu Shapiro Wilka ma wartość nieznacznie większą od
#0,05 równą 0,05752973 więc moża przyjąć, że liczba chorych ma rozkład normalny.
#Więc można się spodziewać, że liczba chorych będzie maleć 
#Reszta testóW przyjmuje wartości bardzo małe lub równe 0 więc nie mają żednego z badanych rozkładów



