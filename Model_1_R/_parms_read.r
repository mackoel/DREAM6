# Чтение параметров из указанного файла
# Значений параметров — 40. Уникальных — 29
# Разделитель — перенос строки
# Строка-параметр имеет вид x[1]=12
if(!file.exists(pfile)){ q() }
tmp <- strsplit(readLines("parms.txt"), "[=]")
p <- list()
as.numeric(tmp[1 ][[1]][[2]]) -> p$p1_degradation_rate
as.numeric(tmp[1 ][[1]][[2]]) -> p$p2_degradation_rate
as.numeric(tmp[1 ][[1]][[2]]) -> p$p3_degradation_rate
as.numeric(tmp[1 ][[1]][[2]]) -> p$p4_degradation_rate
as.numeric(tmp[1 ][[1]][[2]]) -> p$p5_degradation_rate
as.numeric(tmp[1 ][[1]][[2]]) -> p$p6_degradation_rate
as.numeric(tmp[1 ][[1]][[2]]) -> p$pp1_mrna_degradation_rate
as.numeric(tmp[1 ][[1]][[2]]) -> p$pp2_mrna_degradation_rate
as.numeric(tmp[1 ][[1]][[2]]) -> p$pp3_mrna_degradation_rate
as.numeric(tmp[1 ][[1]][[2]]) -> p$pp4_mrna_degradation_rate
as.numeric(tmp[1 ][[1]][[2]]) -> p$pp5_mrna_degradation_rate
as.numeric(tmp[1 ][[1]][[2]]) -> p$pp6_mrna_degradation_rate
as.numeric(tmp[2 ][[1]][[2]]) -> p$pro1_strength
as.numeric(tmp[3 ][[1]][[2]]) -> p$pro2_strength
as.numeric(tmp[4 ][[1]][[2]]) -> p$pro3_strength
as.numeric(tmp[5 ][[1]][[2]]) -> p$pro4_strength
as.numeric(tmp[6 ][[1]][[2]]) -> p$pro5_strength
as.numeric(tmp[7 ][[1]][[2]]) -> p$pro6_strength
as.numeric(tmp[8 ][[1]][[2]]) -> p$rbs1_strength
as.numeric(tmp[9 ][[1]][[2]]) -> p$rbs2_strength
as.numeric(tmp[10][[1]][[2]]) -> p$rbs3_strength
as.numeric(tmp[11][[1]][[2]]) -> p$rbs4_strength
as.numeric(tmp[12][[1]][[2]]) -> p$rbs5_strength
as.numeric(tmp[13][[1]][[2]]) -> p$rbs6_strength
as.numeric(tmp[14][[1]][[2]]) -> p$v1_Kd
as.numeric(tmp[15][[1]][[2]]) -> p$v1_h
as.numeric(tmp[16][[1]][[2]]) -> p$v2_Kd
as.numeric(tmp[17][[1]][[2]]) -> p$v2_h
as.numeric(tmp[18][[1]][[2]]) -> p$v3_Kd
as.numeric(tmp[19][[1]][[2]]) -> p$v3_h
as.numeric(tmp[20][[1]][[2]]) -> p$v4_Kd
as.numeric(tmp[21][[1]][[2]]) -> p$v4_h
as.numeric(tmp[22][[1]][[2]]) -> p$v5_Kd
as.numeric(tmp[23][[1]][[2]]) -> p$v5_h
as.numeric(tmp[24][[1]][[2]]) -> p$v6_Kd
as.numeric(tmp[25][[1]][[2]]) -> p$v6_h
as.numeric(tmp[26][[1]][[2]]) -> p$v7_Kd
as.numeric(tmp[27][[1]][[2]]) -> p$v7_h
as.numeric(tmp[28][[1]][[2]]) -> p$v8_Kd
as.numeric(tmp[29][[1]][[2]]) -> p$v8_h
