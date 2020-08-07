# Bar Plots

?barplot

# Preparando os dados
casamentos <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67),
                     nrow = 3, byrow = T)

# Nomeando a matriz
colnames(casamentos) <- c("0","1-150","151-300",">300")
rownames(casamentos) <- c("Casado","Divorciado","Solteiro")


# Construindo o plot
barplot(casamentos)
barplot(casamentos, beside = T)

# Transposta da matriz
barplot(t(casamentos), beside = T)


