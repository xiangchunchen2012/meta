rm(list = ls())
library("meta")
library("readxl")
library("Matrix")
setwd("D:/BaiduNetdiskWorkspace/认知")
forest<- read_excel("分组2.xlsx")
library(forestplot)
tabletext <- as.matrix(forest[,1:6],header=T)
forestplot(labeltext=tabletext, graph.pos =4,
           mean=forest$g,
           lower=forest$Low, upper=forest$High,
           boxsize=0.2,
           ci.vertices.height = 0.02,
           zero =0,
           col=fpColors(box="#1c61b6",
                        lines="#1c61b6", zero = "gray50"),lty.ci = "solid")
dev.off()

