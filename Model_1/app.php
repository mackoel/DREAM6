<?php
// Начальное состояние системы
include __DIR__ . '/_model.php';
// Параметры, требующие оценки:
include __DIR__ . '/_params.php';
// Матрица отношений
include __DIR__ . '/_matrix.php';

include __DIR__ . '/dydt.php';

// Начальное состояние системы
$u = array(false, 0,1,1, 0,1,1, 0,1,1, 0,1,1, 0,1,1, 0,1,1);

for($T = 0; $T < 10; $T++){
	$u = dydt($u);
	// Показ строки:
	$echo = array("T= $T", $pp1_mrna, $pp2_mrna, $pp3_mrna, $pp4_mrna, $pp5_mrna, $pp6_mrna);
	foreach($echo as $i) echo substr($i, 0, 5) . '	';
	echo "\n";
}


