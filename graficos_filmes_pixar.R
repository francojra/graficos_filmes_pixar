# Base de dados - Curso R ------------------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 20/07/22 ---------------------------------------------------------------------------------------------------------------------------

# Carregar pacotes -------------------------------------------------------------------------------------------------------------------------

library(dados)
library(dplyr)
library(ggplot2)
library(magrittr)
library(tidyr)
library(forcats)

# Selecionar dados -------------------------------------------------------------------------------------------------------------------------

dplyr::glimpse(dados::pixar_avalicao_publico)
dplyr::glimpse(dados::pixar_bilheteria)

fp <- dados::pixar_avalicao_publico
View(fp)

fp1 <- dados::pixar_bilheteria
View(fp1)

# Análises ---------------------------------------------------------------------------------------------------------------------------------

fp <- fp %>%
  drop_na()
View(fp)

fp1 <- fp1 %>%
  drop_na()
View(fp1)

g1 <- ggplot(fp, aes(x = filme, y = nota_rotten_tomatoes)) +
  geom_col(fill = "#386cb0") +
  theme(axis.text = element_text(size = 8.5, color = "black", 
                                 angle = 90)) +
  scale_x_discrete(c(0,0))
g1
