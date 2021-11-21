setwd("~/RR")#katalog w którym umieszczam csv
kwarantanna<-read.csv2("kwarantanna.csv2") #wszystkie dane które były dostępne w dniu tworzenia wykresów
covid<-read.csv2("covid.csv2")
x<-kwarantanna$kwarantanna
y<-covid$różnica
z<-covid$aktywne.zachorowania
data<-covid$data
hist(covid$różnica,
     main = "Histogram zmian aktywnych stanów choroby", 
     xlab = "Zmiany aktywnych stanów choroby", 
     ylab = "Ilość dni z taką samą zmianą",
     border = "black", 
     col = "green",
     freq = TRUE,
     breaks = 86)
# dni są w takiej postaci zamiast dat ponieważ dla dat nie dało się zrobić wykresu liniowego
plot((1:86),z,type = "l", 
     main = "Przebieg zmian aktywnych zachorwań",
     ylab = "Aktywne zachorowania",
     xlab = "Dzień epidemii")
plot(x,type = "l",
     main = "Przebieg zmian liczby osób na kwarantannie",
     ylab = "Osoby na kwarantannie",
     xlab = "Dzień epidemii")