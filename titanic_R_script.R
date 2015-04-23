##inlezen data
library(RCurl)
library(foreign)

url <- "http://raw.github.com/Mishananne/oefenen_R/blob/master/train.csv"
Titanic.data <- getURL(url)

git@github.com:Mishananne/oefenen_R.git

train.data.file <- "https://github.com/Mishananne/oefenen_R/blob/master/train.csv"
train.data.file



##Inlezen data
ReadTitani_data<- read.csv("D:/data/mna20468/Documents/Kaggle Titanic/test.csv")
ReadTitani_data[1:3, ]

summary(ReadTitani_data)
titanic.train <- ReadTitani_data

## Installeren package voor missende data
install.packages("Amelia")
library(Amelia)

##Amelia Uitlezen missende data
require(Amelia)

## grafische weergave ontbrekende data
missmap(titanic.train, main="Titanic Training.csv - overzicht ontbrekende data", col=c("yellow", "black"), legend=FALSE)



##Grafisch overzicht data
barplot(table(titanic.train$Survived),
        names.arg = c("Dood", "Levend"),
        main="overlevende ", col="black")

barplot(table(titanic.train$Pclass), 
        names.arg = c("eerste", "tweede", "derde"),
        main="Pclass (passagier klasse)", col="firebrick")

barplot(table(titanic.train$Sex), main="Geslacht", col="darkviolet")

hist(titanic.train$Age, main="Leeftijd", xlab = NULL, col="brown")

barplot(table(titanic.train$SibSp), main="SibSp (broers en zussen + echtgenoot aanboord)", 
        col="darkblue")

barplot(table(titanic.train$Parch), main="Parch (ouders + kinderen aanboord)", 
        col="gray50")

hist(titanic.train$Fare, main="Fare (bedrag voor kaartje[s])", xlab = NULL, 
     col="darkgreen")

barplot(table(titanic.train$Embarked), 
        names.arg = c("Cherbourg", "Queenstown", "Southampton"),
        main="Embarked (port of embarkation)", col="sienna")











readData <- function(path.name, file.name, column.types, missing.types) {
  read.csv( url( paste(path.name, file.name, sep="") ), 
            colClasses=column.types,
            na.strings=missing.types )
}


