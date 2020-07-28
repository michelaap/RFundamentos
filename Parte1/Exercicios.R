# Exercicios

# Exercicio 1 - Crie um vetor com 12 numeros inteiros
ex1 <- c(1:12)
class(ex1)
ex1

# Exercicio 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com numeros inteiros
ex2 <- matrix(1:16, nrow = 4, ncol = 4)
class(ex2)
ex2

# Exercicio 3 - Crie uma lista unindo o vetor e matriz criados anteriormente
ex3 <- list(ex1, ex2)
ex3

# Exercicio 4 - Usando a funcao read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat
ex4 <- data.frame(read.table("http://data.princeton.edu/wws509/datasets/effort.dat"))
ex4

# Exercicio 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")
names(ex4) <- c("config", "esfc", "chang")
ex4

# Exercicio 6 - Imprima na tela o dataframe iris, verifique quantas dimensoes existem no dataframe iris, imprima um resumo do dataset
iris
class(iris)
dim(iris)
summary(iris)
str(iris)

# Exercicio 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(iris$Sepal.Length, iris$Sepal.Width)

# Exercicio 8 - Usando s função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a funcao subset()
df_iris <- subset(iris, Sepal.Length > 7)
df_iris

# Exercicio 9 - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: voce vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a funcao slice()
ex9 <- iris
ex9

install.packages("dplyr")
library(dplyr)

?slice
slice(ex9, 1:15)

# Exercicio 10 - Use a funcao filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a funcao filter
RSiteSearch('filter')
filter(ex9, Sepal.Length > 7)