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
