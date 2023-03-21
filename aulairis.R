iris
str(iris)
levels(iris$Species)
table(iris$Species)
barplot(table(iris$Species))

iris <- iris[sample(nrow(iris)),]
iris
n <- round(nrow(iris)*0.8)
treinamento <- iris[1:n,]
teste <- iris[(n+1):nrow(iris),]
barplot(table(treinamento$Species))
a <- hist(treinamento$Sepal.Length)
a$breaks
hist(treinamento$Sepal.Width)
hist(treinamento$Sepal.Length)
class(treinamento$Species)
levels(treinamento$Species)

par(mfrow = c(1,3))
setosa <- treinamento[treinamento$Species == "setosa",]
versicolor <- treinamento[treinamento$Species == "versicolor",]
virginica <- treinamento[treinamento$Species == "virginica",]

hist(setosa$Sepal.Width, main = "setosa", xlim = c(0.4,5))
hist(versicolor$Sepal.Width, main = "versicolor", xlim = c(0.4,5))
hist(virginica$Sepal.Width, main = "virginica", xlim = c(0.4,5))

#par(mfrow = c(1,3))
a <- boxplot(treinamento$Petal.Length)
hist(treinamento$Petal.Length)
boxplot(treinamento$Sepal.Length)
hist(treinamento$Sepal.Length)
##especies na box separadas por quartil
a$stats

median(treinamento$Petal.Length)
?sort
mean(sort(treinamento$Petal.Length)[60:61])
## ou c(60,61) - concatenar isso ao inves de 60:61

mean(sort(treinamento$Petal.Length)[30:31])

mean(sort(treinamento$Petal.Length)[90:91])

boxplot(setosa$Petal.Length, versicolor$Petal.Length, virginica$Petal.Length)
#topo da caixa é o terceiro quartil
#as bolinhas no grafico é q passou do limite
boxplot(setosa$Petal.Width, versicolor$Petal.Width, virginica$Petal.Width, names = c("setosa", "versicolor", "virginica"))

plot(x = treinamento$Petal.Length, y = treinamento$Petal.Width, pch = 16, type = 'n', xlab = "tamanho da petala", ylab = "largura da petala")
# p ser de linhas muda com type type = 'l'
points(x = setosa$Petal.Length, y = setosa$Petal.Width, pch = 16, col = "green")
points(x = versicolor$Petal.Length, y = versicolor$Petal.Width, pch = 16, col = "red")
points(x = virginica$Petal.Length, y = virginica$Petal.Width, pch = 16, col = "blue")

abline(h = 1.6)

previsao <- c()
for(j in 1:30){
  if(teste$Petal.Length[j] < 2.5){
    previsao[j] <- "setosa"
  }else{
    if(teste$Petal.Width[j] > 1.6){
      previsao[j] <- "virginica"
    }else{
      previsao[j] <- "versicolor"
    }
  }
}
previsao == teste$Species
mean(previsao == teste$Species)

