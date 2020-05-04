rm(list = objects())
setwd("~/STA203")

df = read.table("Music.txt",header = T,sep = ";") # lecture
summary(df) # analyse univariée
str(df)
GENRE <- df$GENRE
summary(GENRE) # 3444 Classical et 3003 Jazz

library(corrplot)
corrplot(cor(df[,-192])) # illisible beaucoup trop de variables ! voir cours au plus vite
