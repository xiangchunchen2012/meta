rm(list = ls())
library(meta)
library(metafor)
library(metapower)
library(metacart)
library("readxl")
setwd("D:/BaiduNetdiskWorkspace/认知/认知/11.24 终版")
data<- read_excel("AD_MMSE_正常.xlsx")
metaresult<-escalc(measure="SMD",n1i=n.e,m1i=mean.e,sd1i=sd.e,n2i=n.c,m2i=mean.c,sd2i=sd.c,data=data,
                   var.names=c("yi","vi"),to="all",slab = study)
set.seed(2018)
regHAND.re<-rma(n1i=n.e,m1i=mean.e,sd1i=sd.e,n2i=n.c,mods=~factor(T4),m2i=mean.c,sd2i=sd.c,data = metaresult,measure="SMD",method="REML",slab = study)
regHAND.re

