#Importando bibliotecas
library(readxl) 
library(tidyr)
library(readr)
library(dplyr)
library(tmap)
suppressMessages(library(data.table))

#Utilizando o dataset 'World' da biblioteca 'tmap' para posteriormente plotar o mapa-múndi
data("World")
dfw<-World %>% select(name,geometry)

#Lendo arquivo csv com Índice de Gini dos países (https://data.worldbank.org/indicator/SI.POV.GINI?locatins=OE)
df <- read_csv("GINI_MUNDO.csv")
df <- df %>% select(-2:-53,-67)
df <- df %>% select(-2:-4,-14)

#transformando colunas dos anos em linhas
df2 <- df %>% pivot_longer(cols = '2012':'2020', names_to = 'Ano', values_to = 'Gini')
df2$Ano = NULL
df2 = na.omit(df2)

#renomeando colunas
df2 <- df2 %>% rename(Country_Name = `Country Name`)
df2 <- df2 %>% rename(Coef.Gini = Gini)

#calculando média do Índice de Gini por país (2012-2020)
df3 <- data.table(df2)
df3 <- df3[, mean(Coef.Gini), by = Country_Name]
df3 <- df3 %>% rename(Coef.Gini = V1)

#função que converte Índice de Gini em número decimal (entre 0 e 1) com duas casas decimais
func <- function(x){
  y = as.double(x[2])
  return(round(y/100,2))
}

#aplicando função anterior a cada linha do dataframe (parâmetro = 1)
df3$Coef.Gini <- apply(df3,1,func)

#juntando dataframe com Índice de Gini ao subset do 'World' da biblioteca 'tmap'
df_final <- dfw %>% left_join(df3, by = c('name' = 'Country_Name'))

#ordenando dataframe pelo Índice de Gini e inserindo coluna com ranking
df_final <- arrange(df_final,Coef.Gini)
df_final$posicao <- c(1:177)

#plotando gráfico
tm_shape(df_final) +
  tm_polygons("Coef.Gini")+
  tm_layout(scale = 1, frame = FALSE, legend.height = c(5))
