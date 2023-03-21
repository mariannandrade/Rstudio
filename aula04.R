murders <- read.csv("murders.csv", header = TRUE)
#header é se a coluna tem nome ou nao, se for true tem nome
#se o arquivo for csv ja tem elemento separados, se for o arquivo .txt:
#murders2 <- read.table("murders.txt", header = TRUE, sep = ",")
#sep quer dizer elemento separador, oq separa as infos
str(murders)
summary(murders)
#resumo estatistico de cada coluna
#quartil é 25% dos elementos
#median é a mediana - 50%
#min e max numero

murders[1,]
#acessar linha,coluna do conjunto de dados p retirar as infos
#se botar so [linha,] imprime tds as infos da linha especifica
#se botar so [,coluna] printa tds as infos da coluna especifica
murders[c(1,2),]
#com c imprime as 2 linhas
murders[,5]
mean(murders[,5])
mortes <- murders$total
# $ p extrair uma info especifica
mortes
murders$total == min(murders$total)
#quem é true tem o menor valor de mortes por arma de fogo
murders[murders$total == min(murders$total),]
#p imprimir so a linha q corresponde ao pedido, ou seja, 46

murders$total == max(murders$total)
murders[murders$total == max(murders$total),]
#p alterar a escala e conseguir ter parametro igual
100000*murders$total/murders$population
#p alterar e criar uma coluna no conjunto de dados:
murders$rate <- 100000*murders$total/murders$population
murders[murders$rate == min(murders$rate),]
#p descobrir o estado mais e menos violento igualando a taxa
murders[murders$rate == max(murders$rate),]
murders[murders$rate == min(murders$rate),1]
#p restringir ao nome do estado coloca a coluna tb
murders[murders$rate == max(murders$rate),1]

#p ordenar os estados de acordo c a taxa:
x <- c(5,7,6,2,10,1,3)
sort(x) #p retornar em ordem crescente
order(x) #retorna os indices da ordenacao
ordenacao <- order(murders$rate)
ordenacao
murders$state[ordenacao]
#p imprimir ordenado de menos p mais violento

murders <- murders[ordenacao,]
murders
#nomes de linhas de murders atribua os valores de 1 a 51
row.names(murders) <- 1:51
murders

murders$region
#p perguntar pro R bota ?
