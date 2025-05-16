library(kableExtra)
library(tidyverse)
library(readxl)
library(gridExtra)

Groups <- read_excel(path="Groupes CI3.xlsx") %>%
  mutate(CI3 = factor(CI3))



df = data.frame("variables" = c("d_agr","d_def","d_frig","d_hidro","d_roads","d_silos"),
                "coeficient" = c(0.18,0.19,-0.01,-0.25,-0.17,0.09))

png("output.png", width=480,height=480,bg = "white")
grid.table(Groups)
dev.off()

















