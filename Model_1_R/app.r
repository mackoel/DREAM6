#!/usr/bin/env Rscript

# Установка deSolve:
# install.packages('deSolve', repos='http://probability.ca/cran')

# Запуск с двумя парамтрами:
#  ./app.r parameters_filename quality
#  1. parameters_filename — список параметров, разделитель, перенос сторки
#  2. quality — количество строчек, сравниваемых в таблицах от 1 до 10

args  <- commandArgs(trailingOnly = TRUE)
howto <- function(str){
	cat(str)
	cat("\nUSE: ./app.r parameters_filename quality\n")
	q()
}

if(length(args) != 2){ howto("Input error") }
quality <- round(as.numeric(args[2]))
if(quality > 10 || quality < 2){ quality <- 5 }

source("_parms_read.r") # чтение параметров  
source("_state.r")      # начальное состояние системы (вектор)
source("_matrix.r")     # экспериментальные значения
source("_dydt.r")

library(deSolve)

times <- seq(0, quality * 2, by = 0.1)
out <- ode(y = state, times = times, func = dydt, parms = NULL)

# Извлекаем только pp{i}_mrna при чётных time
m <- out[seq(1, quality * 10, by = 10),(2:7)]

cat( sum((m - ex[1:quality,])^2) )
cat("\n")
