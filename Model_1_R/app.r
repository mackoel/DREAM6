#!/usr/bin/env Rscript

# Установка deSolve:
# install.packages('deSolve', repos='http://probability.ca/cran')

# Запуск:
#  ./app.r quality parameters_filename
#  ./app.r parameters_filename
#  ./app.r
#  1. quality — количество строчек, сравниваемых в таблицах от 1 до 10
#  2. parameters_filename — список параметров, разделитель, перенос сторки

args    <- commandArgs(trailingOnly = TRUE)
pfile   <- "parms.txt"
quality <- 10

if(length(args) == 2){
	quality <- round(as.numeric(args[1]))
	pfile   <- args[2]
}
if(length(args) == 1){
	pfile   <- args[1]
}
if(quality > 10 || quality < 2){
	quality <- 10
}

source(pfile)
# source("_parms_read.r") # чтение параметров  
# degradation_rate - один общий параметр для всех
degradation_rate -> p1_degradation_rate
degradation_rate -> p2_degradation_rate
degradation_rate -> p3_degradation_rate
degradation_rate -> p4_degradation_rate
degradation_rate -> p5_degradation_rate
degradation_rate -> p6_degradation_rate
degradation_rate -> pp1_mrna_degradation_rate
degradation_rate -> pp2_mrna_degradation_rate
degradation_rate -> pp3_mrna_degradation_rate
degradation_rate -> pp4_mrna_degradation_rate
degradation_rate -> pp5_mrna_degradation_rate
degradation_rate -> pp6_mrna_degradation_rate

source("_state.r")      # начальное состояние системы (вектор)
source("_matrix.r")     # экспериментальные значения
source("_dydt.r")

library(deSolve)

times <- seq(0, quality * 2, by = 0.1)
out <- ode(y = state, times = times, func = dydt, parms = NULL, method = "rk4")

# Извлекаем только pp{i}_mrna при чётных time
m <- out[seq(1, quality * 10, by = 10),(2:7)]

cat( sum((m - ex[1:quality,])^2) )
cat("\n")
