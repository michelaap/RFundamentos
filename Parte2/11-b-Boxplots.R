# Boxplots

?boxplot
?sleep

# Permite utilizar as colunas sem especificar o mome do dataset
attach(sleep)

# Construção do boxplot
sleepboxplot = boxplot(data = sleep, extra ~ group,
                       main = "Duração do Sono",
                       col.main = "red", ylab="Horas", xlab="Droga")

# Cálculo da média
means = by(extra, group, mean)

# Adiciona a média ao gráfico
points(means, col = "red")


#Boxplot horizontal
horizontalboxplot = boxplot(data = sleep, extra ~ group,
                            ylab="", xlab="", horizontal = T)

horizontalboxplot = boxplot(data = sleep, extra ~ group,
                            ylab="", xlab="", horizontal = T,
                            col = c("blue", "red") )


