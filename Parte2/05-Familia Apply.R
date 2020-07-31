# A família apply - uma forma elegante de fazer loops

#  apply() - arrays e matrizes
# tapply() - os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versão amigável da lapply
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - similar a lapply()
# eapply() - gera uma lista
# mapply() - similar a sapply, multivariada
# by

# Se você estiver trabalhando com os objetos: 

# list, numeric, character (list/vecor) => sapply ou lapply
# matrix, data.frame (agregação por coluna) => by / tapply
# Operações por linha ou operações específicas => apply

# Usando um Loop
lista1 <- list(a = (1:10), b = (45:77))

# Calculando o total de cada elemento da lista com loop for
valor_a = 0
valor_b = 0
for (i in lista1$a){
  valor_a = valor_a + i 
}
for (j in lista1$b){
  valor_b = valor_b + j
}
print(valor_a)
print(valor_b)

# Calculando cada elemento da lista com sapply
?sapply
sapply(lista1, sum)

# Aplicando funções com sapply
sapply(lista1, mean)


# apply()
?apply

x <- matrix(rnorm(9), nr = 3, byrow = T)
x
apply(x, 1, mean)
apply(x, 2, mean)
apply(x, 1, plot)

resultapply <- apply(x, 1, mean)
resultapply


escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))

escola
escola$Geografia

# Calculando a média por aluno
escola$Media = NA
escola

escola$Media = apply(escola[, c(2, 3, 4)], 1, mean)
escola
escola$Media = round(escola$Media)
escola


# tapply() vs sqldf
install.packages('sqldf')
require(sqldf)

escola2 <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Alan', 'Alice', 'Alana'),
                     Semestre = c(1, 1, 1, 2, 2, 2),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))

escola2

sqldf("select aluno, sum(Matematica), sum(Geografia), sum(Quimica) from escola2 group by aluno")
tapply(c(escola2$Matematica), escola2$Aluno, sum)

# by
?by

sqldf("select aluno, sum(Matematica), sum(Geografia), sum(Quimica) from escola2 group by semestre")
by(escola2[, c(2, 3, 4)], escola2$Semestre, colSums)


# lapply()
?lapply

lista1 <- list(a = (1:10), b = (45:77))
lista1
lapply(lista1, sum)
sapply(lista1, sum)


# vapply()
?vapply

vapply(lista1, fivenum, c(Min. = 0, "1stQu." = 0, Median = 0, "3rd Qu." = 0, Max = 0))


# replicate
?replicate
replicate(7, runif(10))


# mapply()
?mapply
mapply(rep, 1:4, 4:1)


# rapply()
?rapply

lista2 <- list(a = c(1:5), b = c(6:10))
lista2

rapply(lista2, sum)
rapply(lista2, sum, how = "list")







