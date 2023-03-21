#O R como calculadora
3+2 #soma
3-2 #subtracao
3*2 #multiplicacao
3/2 #divisao
3**2 #potencia
3^2 #potencia forma 2

exp(2) #exponencial
sqrt(-2) #raiz
log(4) #logaritmo
?log #usa o ? quando quer saber sobre a funcao (help)
log(4, 2) #o x como o primeiro e a base segundo
#pode ser invertido
log(base = 2, x = 4)
log(b = 2, x = 4) #da p usar a primeira letra

#Atribuindo valores a uma variavel
a <- 3+2
#3+2 -> b (pode ser o contrario)
a #p ver o result de a
print(a) #tambem p ver o result
b = 3-2 #tambem da p usar o = mas melhor setinha
class(a)

w <- "teste"
class(w)
x <- "3"
class(x)

#Criando vetores, c()
y <- c(3,5,1,10,98,76)
y
q <- c(3,5,"teste", 30)
q
#um vetor so admite elementos da mesma classe, se nao estiver ele mesmo converte
y[3]
#vetor em R comeca a contar do um, nao do zero
y[c(3,5)] #p extrair posicoes usa um vetor assim p indicar as posicoes
y[c(3,5,3)]
4:56 #p criar um vetor com posicao inicial e final
vetor <- 4:56
vetor[27]
#nunca pode ter um nome de vetor comecado por caractere especial. nem numero
#sempre tem que comecar por letra
vetor_1 <- 27
y[3:5] #de um ao outro

#funcoes p manipular vetores
length(vetor) #tamanho
sum(vetor) #soma
mean(vetor) #media, soma todo mundo e divide pelo num do vetor
cumsum(vetor) #soma acumulada
vetor #imprimir ele
vetor*2 #p multiplicar cada elemento do vetor

a <- c(2,5,10)
a*2
a*c(2,3) #percorre e sobra
a+c(2,3)
#warning message nao eh erro so aviso pq nao tem elemento p percorrer
?seq
seq(from = 4, to = 56, by = 3)
#limita do from ao to e o by fala o intervalo
?sample
#funcao p sortear dentro de um conjunto de maneira aleatoria
sample(x = 1:60, size = 6, replace = FALSE)
#x e size eh argumento da funcao
#tem q botar replace mesmo q ele funcione sem
sample(x = 1:6, size = 20, replace = TRUE)
#replace false nao devolve pro conjunto o numero que sorteia, true devolve
#nao pode ter amostra maior q o x com replace false pq nao tem numero suficiente
set.seed(0825) #p plantar a "semente"
dado <- sample(x = 1:6, size = 20, replace = TRUE) #com o set.seed obtem os mesmos resultados
dado
#quando quer reproduzir o mesmo resultado, sequencia fixa
dado == 6 #p comparar os elementos
#== como pergunta logica 
#no resultado true eh onde sai o 6 e false onde nao sai o numero especificado
saiu_6 <- dado == 6
sum (saiu_6)
sum (saiu_6)/length(dado)
#p descobrir a "proporcao" das vezes q o numero pedido apareceu
dado2 <- sample(x = 1:6, size = 1000, replace = TRUE)
saiu_06 <- dado2 == 6
sum(saiu_06)/length(dado2)
soma_acumulada <- cumsum(saiu_06)
media_acumulada <- soma_acumulada/1:1000
plot(1:1000, media_acumulada, type = "l")
#da p trocar linha do grafico com type
#p ver q a proporcao de 6 vai exatamente p 1/6
#"p" ponto; "l" linha;