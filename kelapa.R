setwd("D:/METOPEL UAS/AUDRY METOPEL")
library(readxl)
library(tidyverse)
library(kableExtra)
read_excel("kelapa.xlsx")
dat <- read_excel("kelapa.xlsx")
kbl(dat) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"))


# Plot 
# regresi
reg1<-lm(ekspor~kelapa+briket+kopra+sabut+minyak,data=dat)
summary(reg1)

# Membuat error
dat$u<-resid(reg1)

# plot eror

dat$m<-resid(reg1)
plot(dat$ekspor,dat$m,xlab="Total Nilai Ekspor",ylab="error")
abline(h=0) # membuat garis horizontal di y=0

dat$m<-resid(reg1)
plot(dat$kelapa,dat$m,xlab="Ekspor kelapa",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$briket,dat$m,xlab="Ekspor Briket",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$kopra,dat$m,xlab="Ekspor Kopra",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$sabut,dat$m,xlab="Ekspor Sabut Kelapa",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$minyak,dat$m,xlab="Ekspor Minyak Kelapa (VCO)",ylab="error")
abline(h=0)
