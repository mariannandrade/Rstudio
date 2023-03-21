#revisao aula 01
a <- c(1,2,3) #criar vetor e atribuir variavel
a #chamar
print(a) #ou printar assim
c(1,3,89,"teste") #so da mesma classe

sorteio <- sample(x = 1:100, size = 20, replace = TRUE)
#replace false nao da p tirar 2 elementos iguais
sorteio
#p chamar o vetor sorteio
sorteio == 75 #comparando cada uma das entradas c numero 75
#se nao tiver entrada true nao tirou o numero 75 no sorteio
sum(sorteio == 75)
#zero como falso e um como true
sorteio < 23
sum(sorteio < 23)
#soma o numero de true que tiver
sorteio
#p extrair posicoes do vetor usa colchete
sorteio[sorteio < 23]
sorteio[3] #p saber o numero que ta na posicao
which(sorteio < 23)
#'qual' sorteio < 23 ou seja quais as posicoes q correspondem
sorteio[which(sorteio < 23)]
#corresponde ao msm de sorteio[sorteio < 23]

#estruturas de repeticao
soma <- 0
for (j in 1:20)
  soma <- soma + j
}
soma
#nao tem identacao no R, executa o que ta em chaves
x <-c(4, 78, 90)
for(j in x){
  soma <- soma + j
}
soma
#problema
medias <- c()
for(i in 1:10000){
 dados <- sample(x = 1:6, size = 100, replace = TRUE)
 medias[i] <- mean(dados)
 #medias <- c(medias, mean(dados))
 #fazer um grafico p entender a frequencia c histograma
}
medias
hist(medias)
#ver no grafico a tendencia a 3.5 - media teorica
#condicao
#problema 01. em media quantas vezes deveremos lançar um dado de seis faces ate q o numero 5 seja obtido 2x?
dado <- 0
lancamentos <- 0
resultados <- c()
#diferente como !=
while (dado != 5){
  dado <- sample(1:6, size = 1)
  lancamentos<- lancamentos + 1
  resultados <- c(resultados, dado)
}
length(resultados)
resultados

#estruturas condicionais

dado <- sample(1:6, size = 1)
# %% como resto da divisao em R
if((dado %% 2) == 0){
  print("o resultado é par")
}else{
  print("o numero é ímpar")
}

dado <- sample(1:6, 3, replace = TRUE)
if(length(unique(dado)) == 3){
#funcao unique so imprime os elementos q nao se repetem
  print("todas as faces sao distintas")
}else if(length(unique(dado)) == 2){
  print("duas faces sao iguais")
}else{
  print("todas as faces sao iguais")
}
dado

#problema 01
dado <- 0
lancamentos <- 0
while(dado != 5){
  dado <- sample(1:6, size = 1)
  lancamentos <- lancamentos + 1
}
lancamentos