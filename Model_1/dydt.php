<?php
// $u_next = DYDT($u_current);
// DYDT — вычисление состояния модели в момент времени (t) по состоянию в (t-1)
// Состояние — $u - массив описывающих модель значений (концентрации и пр.)

function dydt($u){
	// Инкапсуляция. В PHP в теле фунции не доступны значения переменных, объявленных за её пределами
	// global — «достаёт» их из глобальной области видимости (ссылка, не копия).
	global $as1, $as2, $as3, $cod1, $cod2, $cod3, $cod4, $cod5, $cod6, $p1, $p2, $p3, $p4, $p5, $p6, $pp1_mrna, $pp2_mrna, $pp3_mrna, $pp4_mrna, $pp5_mrna, $pp6_mrna, $pro1, $pro2, $pro3, $pro4, $pro5, $pro6, $rbs1, $rbs2, $rbs3, $rbs4, $rbs5, $rbs6, $rs1, $rs2, $rs3, $rs4, $rs5, $p1_degradation_rate, $p2_degradation_rate, $p3_degradation_rate, $p4_degradation_rate, $p5_degradation_rate, $p6_degradation_rate, $pp1_mrna_degradation_rate, $pp2_mrna_degradation_rate, $pp3_mrna_degradation_rate, $pp4_mrna_degradation_rate, $pp5_mrna_degradation_rate, $pp6_mrna_degradation_rate, $pro1_strength, $pro2_strength, $pro3_strength, $pro4_strength, $pro5_strength, $pro6_strength, $rbs1_strength, $rbs2_strength, $rbs3_strength, $rbs4_strength, $rbs5_strength, $rbs6_strength, $v1_Kd, $v1_h, $v2_Kd, $v2_h, $v3_Kd, $v3_h, $v4_Kd, $v4_h, $v5_Kd, $v5_h, $v6_Kd, $v6_h, $v7_Kd, $v7_h, $v8_Kd, $v8_h, $sm;
	
	$pp1_mrna = $u[1];
	$cod1 = $u[2];
	$p1 = $u[3];
	$pp2_mrna = $u[4];
	$cod2 = $u[5];
	$p2 = $u[6];
	$pp3_mrna = $u[7];
	$cod3 = $u[8];
	$p3 = $u[9];
	$pp4_mrna = $u[10];
	$cod4 = $u[11];
	$p4 = $u[12];
	$pp5_mrna = $u[13];
	$cod5 = $u[14];
	$p5 = $u[15];
	$pp6_mrna = $u[16];
	$cod6 = $u[17];
	$p6 = $u[18];

	$as1 = ((1+pow($p1/$v2_Kd,$v2_h))-1)/((1+pow($p1/$v2_Kd,$v2_h)));
	$as2 = ((1+pow($p1/$v1_Kd,$v1_h))-1)/((1+pow($p1/$v1_Kd,$v1_h)));
	$as3 = ((1+pow($p1/$v3_Kd,$v3_h))-1)/((1+pow($p1/$v3_Kd,$v3_h)));

	$cod1 = $pro1_strength;
	$cod2 = $pro2_strength * $as1 * $rs1;
	$cod3 = $pro3_strength * $as3 * $rs4;
	$cod4 = $pro4_strength * $as2 * $rs2;
	$cod5 = $pro5_strength * $rs3;
	$cod6 = $pro6_strength * $rs5;

	$rs1 = 1.0/((1+pow($p6/$v5_Kd,$v5_h)));
	$rs2 = 1.0/((1+pow($p5/$v8_Kd,$v8_h)));
	$rs3 = 1.0/((1+pow($p4/$v6_Kd,$v6_h)));
	$rs4 = 1.0/((1+pow($p2/$v4_Kd,$v4_h)));
	$rs5 = 1.0/((1+pow($p4/$v7_Kd,$v7_h)));

	$rates = array();
	$rates[] = $cod1;
	$rates[] = $pp1_mrna_degradation_rate * $pp1_mrna;
	$rates[] = $rbs1_strength * $pp1_mrna;
	$rates[] = $p1_degradation_rate * $p1;
	$rates[] = $cod2;
	$rates[] = $pp2_mrna_degradation_rate * $pp2_mrna;
	$rates[] = $rbs2_strength * $pp2_mrna;
	$rates[] = $p2_degradation_rate * $p2;
	$rates[] = $cod3;
	$rates[] = $pp3_mrna_degradation_rate * $pp3_mrna;
	$rates[] = $rbs3_strength * $pp3_mrna;
	$rates[] = $p3_degradation_rate * $p3;
	$rates[] = $cod4;
	$rates[] = $pp4_mrna_degradation_rate * $pp4_mrna;
	$rates[] = $rbs4_strength * $pp4_mrna;
	$rates[] = $p4_degradation_rate * $p4;
	$rates[] = $cod5;
	$rates[] = $pp5_mrna_degradation_rate * $pp5_mrna;
	$rates[] = $rbs5_strength * $pp5_mrna;
	$rates[] = $p5_degradation_rate * $p5;
	$rates[] = $cod6;
	$rates[] = $pp6_mrna_degradation_rate * $pp6_mrna;
	$rates[] = $rbs6_strength * $pp6_mrna;
	$rates[] = $p6_degradation_rate * $p6;

    $system = array_fill(1, 18, 0);
    foreach($sm as $l => $line) foreach($line as $k => $value) $system[$l + 1] += $rates[$k] * $value;
    //foreach($system as $k => $v) $system[$k] = $v > 0 ? $v : 0;

    return $system;
}