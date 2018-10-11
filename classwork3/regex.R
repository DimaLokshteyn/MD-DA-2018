#Загрузите данные о землятресениях
anss <- readLines("https://raw.githubusercontent.com/SergeyMirvoda/MD-DA-2018/master/data/earthquakes_2011.html", warn=FALSE)

#Выберите строки, которые содержат данные с помощью регулярных выражений и функции grep
numberRows<-grep(pattern = "^\\d{4}", anss)
valueRows<-anss[numberRows]

#Проверьте что все строки (all.equal) в результирующем векторе подходят под шаблон.
bool<-grepl(pattern="^\\d{4}",x=anss)
all.equal(valueRows, anss[which(bool)]);


