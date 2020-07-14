# Precisa instalar:
# install.packages("plotrix")

library(plotrix)
slices <- c(10, 12, 4, 16, 11) 
lbls <- c("Centro-Oeste", "Sudeste", "Sul", "Norte", "Nordeste")
pie3D(slices,labels=lbls,explode=0.1)
