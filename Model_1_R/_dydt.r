dydt <- function(t, u, params){
    as1 <- ((1+((u["p1"]/p$v2_Kd)^p$v2_h))-1)/(1+((u["p1"]/p$v2_Kd)^p$v2_h));
    as2 <- ((1+((u["p1"]/p$v1_Kd)^p$v1_h))-1)/(1+((u["p1"]/p$v1_Kd)^p$v1_h));
    as3 <- ((1+((u["p1"]/p$v3_Kd)^p$v3_h))-1)/(1+((u["p1"]/p$v3_Kd)^p$v3_h));

    cod1 <<- p$pro1_strength;
    cod2 <<- p$pro2_strength * as1 * rs1;
    cod3 <<- p$pro3_strength * as3 * rs4;
    cod4 <<- p$pro4_strength * as2 * rs2;
    cod5 <<- p$pro5_strength * rs3;
    cod6 <<- p$pro6_strength * rs5;

    rs1 <<- 1/(1+((u["p6"]/p$v5_Kd)^p$v5_h));
    rs2 <<- 1/(1+((u["p5"]/p$v8_Kd)^p$v8_h));
    rs3 <<- 1/(1+((u["p4"]/p$v6_Kd)^p$v6_h));
    rs4 <<- 1/(1+((u["p2"]/p$v4_Kd)^p$v4_h));
    rs5 <<- 1/(1+((u["p4"]/p$v7_Kd)^p$v7_h));

	ds = c();
	ds["pp1_mrna"] <- cod1 - p$pp1_mrna_degradation_rate * u["pp1_mrna"];
	ds["pp2_mrna"] <- cod2 - p$pp2_mrna_degradation_rate * u["pp2_mrna"];
	ds["pp3_mrna"] <- cod3 - p$pp3_mrna_degradation_rate * u["pp3_mrna"];
	ds["pp4_mrna"] <- cod4 - p$pp4_mrna_degradation_rate * u["pp4_mrna"];
	ds["pp5_mrna"] <- cod5 - p$pp5_mrna_degradation_rate * u["pp5_mrna"];
	ds["pp6_mrna"] <- cod6 - p$pp6_mrna_degradation_rate * u["pp6_mrna"];
	ds["p1"] <- p$rbs1_strength * u["pp1_mrna"] - p$p1_degradation_rate * u["p1"];
	ds["p2"] <- p$rbs2_strength * u["pp2_mrna"] - p$p2_degradation_rate * u["p2"];
	ds["p3"] <- p$rbs3_strength * u["pp3_mrna"] - p$p3_degradation_rate * u["p3"];
	ds["p4"] <- p$rbs4_strength * u["pp4_mrna"] - p$p4_degradation_rate * u["p4"];
	ds["p5"] <- p$rbs5_strength * u["pp5_mrna"] - p$p5_degradation_rate * u["p5"];
	ds["p6"] <- p$rbs6_strength * u["pp6_mrna"] - p$p6_degradation_rate * u["p6"];

	return(list(ds))
}
