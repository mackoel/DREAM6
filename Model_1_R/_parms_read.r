# Чтение параметров из указанного файла
# Значений параметров — 40
# Разделитель — перенос строки
if(!file.exists(args[1])){ howto("Parameters file not found") }
p <- list()
tmp <- as.numeric(readLines(args[1]))
tmp[1]  -> p$p1_degradation_rate
tmp[2]  -> p$p2_degradation_rate
tmp[3]  -> p$p3_degradation_rate
tmp[4]  -> p$p4_degradation_rate
tmp[5]  -> p$p5_degradation_rate
tmp[6]  -> p$p6_degradation_rate
tmp[7]  -> p$pp1_mrna_degradation_rate
tmp[8]  -> p$pp2_mrna_degradation_rate
tmp[9]  -> p$pp3_mrna_degradation_rate
tmp[10] -> p$pp4_mrna_degradation_rate
tmp[11] -> p$pp5_mrna_degradation_rate
tmp[12] -> p$pp6_mrna_degradation_rate
tmp[13] -> p$pro1_strength
tmp[14] -> p$pro2_strength
tmp[15] -> p$pro3_strength
tmp[16] -> p$pro4_strength
tmp[17] -> p$pro5_strength
tmp[18] -> p$pro6_strength
tmp[19] -> p$rbs1_strength
tmp[20] -> p$rbs2_strength
tmp[21] -> p$rbs3_strength
tmp[22] -> p$rbs4_strength
tmp[23] -> p$rbs5_strength
tmp[24] -> p$rbs6_strength
tmp[25] -> p$v1_Kd
tmp[26] -> p$v1_h
tmp[27] -> p$v2_Kd
tmp[28] -> p$v2_h
tmp[29] -> p$v3_Kd
tmp[30] -> p$v3_h
tmp[31] -> p$v4_Kd
tmp[32] -> p$v4_h
tmp[33] -> p$v5_Kd
tmp[34] -> p$v5_h
tmp[35] -> p$v6_Kd
tmp[36] -> p$v6_h
tmp[37] -> p$v7_Kd
tmp[38] -> p$v7_h
tmp[39] -> p$v8_Kd
tmp[40] -> p$v8_h
