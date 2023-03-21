#problema
quantos_5 <- 0
lancamentos <- 0
resultados <- c()
while(quantos_5 < 2){
  dado <- sample(x = 1:6, size = 1, replace = TRUE)
  lancamentos <- lancamentos + 1
  resultados <- c(resultados, dado)
  if(dado == 5){
    quantos_5 <- quantos_5 + 1
  }
}
lancamentos
resultados
#foto do problema
#grafico
#hist(numero_lancamentos, xlab = "eixo x", ylab = "no eixo y", main = "titulo do grafico", col = "cor")


#problema 02
figurinhas <- 1:30
album <- sample(x = figurinhas, size = 30, replace = TRUE)
while(length(unique(album))<30){
  album <- c(album, sample(x = figurinhas, size = 1))
}
length(album)
#unique qtde de figurinhas unicas
#length tamanho do vetor
#botao de stop
#linha vazia c sinal de + qnd falta alguma coisa

numero_compras <- c()
for (j in 1:10000){
  album <- sample(x = figurinhas, size = 30, replace = TRUE, prob = probabilidades)
  while(length(unique(album))<30){
    album <- c(album, sample(x = figurinhas, size = 1))
  }
  numero_compras[j] <- length(album)
}
numero_compras
min(numero_compras)
max(numero_compras)
mean(numero_compras)

sample(x = c(1,2,3), size = 20, replace = TRUE, prob = c(1,10,10))
#prob significa dar peso p determinado elemento do vetor
#nesse exemplo 1 fica c probabilidade baixa
rep(3, times = 29)
#numero q quer replicar e quantas vezes
probabilidades <- c(1, rep(5, times = 29))
probabilidades


#problema 03
juju <- 18
jorel <- 7
moeda <- c("cara", "coroa")
while(juju > 0 & jorel > 0){
# & signfica e, as duas condicoes tem q ser true
  sorteio <- sample(moeda, size = 1)
  if(sorteio == "cara"){
    juju <- juju + 1
    jorel <- jorel - 1
  }else{
    juju <- juju - 1
    jorel <- jorel + 1
  }
}
juju
jorel

vitorias_juju <- c()
for(j in 1:10000){
  juju <- 18
  jorel <- 7
  while(juju > 0 & jorel > 0){
    sorteio <- sample(moeda, size = 1)
    if(sorteio == "cara"){
      juju <- juju + 1
      jorel <- jorel - 1
    }else{
      juju <- juju - 1
      jorel <- jorel + 1
    }
  }
  if(juju == 25){
    vitorias_juju[j] <- 1
  }else{
    vitorias_juju[j] <- 0
  }
}
vitorias_juju
mean(vitorias_juju)

#data frames
#importar pro R - session - choose directory
dados <- read.csv(file = "murders.csv", header = TRUE)
#header true pq tem o nome das coisas primeiro
dados
#observacao sao as linhas
#variables sao as colunas
dados[1,2]
#linha e coluna q nem em matriz (2 dimensoes)
dados[1,5]
#p todas infos da primeira linha:
dados[1,]
#ou p todas infos da quinta coluna, sem especificar as linhas(todas):
dados[,5]
mean(dados[,5])
#media do numero de mortes por arma de fogo (infos de todas as linhas da quinta coluna)
max(dados[,5])
min(dados[,5])
dados[,5] == 2
#onde aparece o true eh o estado q teve 2 mortes
dados[dados[,5]==2,]
#p ver o estado e a , dps do 2 p extrair td
