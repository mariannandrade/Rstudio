titanic <- read.table(file = "titanic.txt", header = TRUE, sep = ",")
str(titanic)
titanic <- titanic[,-1]
titanic$Survived
sum(titanic$Survived)/891

titanic$Survived <- as.factor(titanic$Survived)
table(titanic$Survived)
prop.table(table(titanic$Survived))
round(prop.table(table(titanic$Survived)), digits = 2)
round(5.789, digits = 2)
barplot(table(titanic$Survived),
        ylim = c(0,600),
        names.arg = c("morreu", "sobreviveu"),
        col = "#66c2a5",
        main = "frequencia de sobrevivencia")
#pacote de grafico q n ta no R
#ggplot..
#p alterar os limites do eixo y com >> , ylim()
#p alterar os nomes >> names.arg
#colorbrewer2.org - site das cores do grafico
#p alterar as cores >> col
#p alterar o titulo >> main

#p transformar em fator c niveis
titanic$Sex <- as.factor(titanic$Sex)
sum(titanic$Sex == "female")
table(titanic$Sex)
barplot(table(titanic$Sex),
        names.arg = c("mulheres", "homens"),
        ylim = c(0,600),
        col = "#bcbddc")

#p ver qm sobreviveu de acordo c cada sexp
table(titanic$Survived, titanic$Sex)

barplot(table(titanic$Survived, titanic$Sex),
        ylim = c(0,600),
        col = c("#fc8d62", "#66c2a5"),
        names.arg = c("mulheres", "homens"),
        legend = T,
        xlim = c(0,3),
        args.legend = list(bty = "n", x = "right", cex = 1),
        legend.text = c("nao sobreviveu", "sobreviveu"))

  #legend p legenda do grafico
#args.legend é uma lista p mudar os argumentos da legenda
#vetor so admite elementos da mesma classe e lista nao, admite de classes diferentes
#bty tipo do box

titanic$Pclass <- as.factor(titanic$Pclass)
table(titanic$Survived, titanic$Pclass)
barplot(table(titanic$Survived, titanic$Pclass),
        ylim = c(0,600),
        col = c("#8856a7", "#a8ddb5"),
        names.arg = c("primeira classe", "segunda classe", "terceira classe"),
        legend = T,
        xlim = c(0,4.5),
        args.legend = list(bty = "n", x = "right", cex = 1),
        legend.text = c("nao sobreviveu", "sobreviveu"))
