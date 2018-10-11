ural_home<-c(2,0,1,0)
ural_away<-c(0,0,1,1)

ural_home
ural_away

names(ural_home)<-c("Ufa", "CSKA", "Arsenal", "Anzhi")
names(ural_away)<-c("Rostov", "Amkar", "Rubin", "Orenburg")

ural_away
ural_home

sum(ural_away)
sum(ural_home)

mean(ural_away)
mean(ural_home)

ural_away==ural_home
#Вывод: Команда Урал забивала больше в домашних матчах. 
#Вторая и третья игра в домашних и гостевых матчах завершилась с одинаковым счётом

