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
library(gridExtra)

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

g1 <- ggplot(fp, aes(x = fct_reorder(filme, nota_rotten_tomatoes), 
             y = nota_rotten_tomatoes)) +
  geom_col(fill = "#66c2a5") +
  labs(x = "Filmes", y = "Notas Rotten Tomatoes") +
  theme(axis.text.x = element_text(size = 12, color = "black", 
                                 angle = 40),
        axis.text.y = element_text(size = 12, color = "black"),
        axis.title = element_text(size = 15, color = "black")) +
  scale_y_continuous(expand = expansion(mult = c(0, .1))) +
  coord_flip()
g1

g2 <- ggplot(fp, aes(x = fct_reorder(filme, nota_metacritic), 
             y = nota_metacritic)) +
  geom_col(fill = "#fc8d62") +
  labs(x = "Filmes", y = "Notas Metacritic") +
  theme(axis.text.x = element_text(size = 12, color = "black", 
                                 angle = 40),
        axis.text.y = element_text(size = 12, color = "black"),
        axis.title = element_text(size = 15, color = "black")) +
  scale_y_continuous(expand = expansion(mult = c(0, .1))) +
  coord_flip()
g2

g3 <- ggplot(fp, aes(x = fct_reorder(filme, nota_critics_choice), 
             y = nota_critics_choice)) +
  geom_col(fill = "#e78ac3") +
  labs(x = "Filmes", y = "Notas Critics Choice") +
  theme(axis.text.x = element_text(size = 12, color = "black", 
                                 angle = 40),
        axis.text.y = element_text(size = 12, color = "black"),
        axis.title = element_text(size = 15, color = "black")) +
  scale_y_continuous(expand = expansion(mult = c(0, .1))) +
  coord_flip()
g3

grid.arrange(g1, g2, g3, ncol = 3, nrow = 1)
