# Histogramas

?hist
?cars


# Definindo os dados
dados = cars$speed

# Construindo um histograma
hist(dados)
hist(dados, breaks = 10)
hist(dados, labels = T, breaks=c(0,5,10,20,30))
hist(dados, labels = T, breaks = 10)
hist(dados, labels = T, ylim = c(0,10), breaks = 10)


# Adicionando linhas ao histograma
hey = hist(dados, breaks = 10)
xaxis = seq(min(dados), max(dados), length = 10)
yaxis = dnorm(xaxis, mean = mean(dados), sd = sd(dados))
yaxis = yaxis*diff(hey$mids)*length(dados)

lines(xaxis, yaxis, col = "red")



