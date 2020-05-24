#Apagar memoria
remove(list=ls()) 
#Ativar pacote
library(EBImage)
#Indicar pasta de trabalho
setwd("D:/BKP/Backup Pendrive/UFMG/Disciplinas/Estatistica experimental/Videos/_Dicas/NumeroCelulas")
#Abrir imagem
im=readImage("fig.jpg")
plot(im)
#Binarizar a imagem
im=round(im,0)
im2=bwlabel(im==0)
#Obter medidas dos objetos
Shape=computeFeatures.shape(im2)
#Obter coordenadas do objeto
Coord=computeFeatures.moment(im2)

#Apresentar numero das imagens
plot(im)
text(Coord[,1],Coord[,2],1:nrow(Coord),col="red",cex=0.7)

#Apresentar Area
plot(im)
text(Coord[,1],Coord[,2],Shape[,1],col="red",cex=0.7)

#Apresentar tamanho
plot(im)
text(Coord[,1],Coord[,2],round(Shape[,6],2),col="red",cex=0.7)
