# DREAM6 Estimation of Model Parameters Challenge

[http://www.the-dream-project.org/challenges/dream6-estimation-model-parameters-challenge](http://www.the-dream-project.org/challenges/dream6-estimation-model-parameters-challenge)

## Резюме

Даны полные структуры трёх генно-регуляторных сетей (в том числе выражения для кинетических законов), от участников требуется разработать и/или применять методы оптимизации, включая выбор наиболее информативных экспериментов, чтобы точно оценить параметры моделей а так же прогнозировать результаты возмущений в этих моделях.

## Предпосылка

Большая часть последних исследований в области реверс-инженерии генных сетей была нвправлена на выявление причинно-следственных связей в топологии взаимодействий между генами (1, 2). Это направление было в центре внимания в нескольких последних изданиях DREAM (3, 4). Такие взаимодействия между генами, как правило, вытекают из экспериментов экспрессии генов с различными возмущениями в генной сети. Текущая задача поставлена с целью продвинуться вперёд на один логический в области реконструкции топологии генной сети. После того, как топология генной сети будет определена с достаточным уровнем правдоподобия, каким образом можно охарактеризовать кинетику этой сети, которая бы точно отражала все причинные связи в предлагаемой топологии?

В решении этого вопроса, есть два ключевых аспекта, которые требуют внимания: задача оценки параметров модели по данной структуре модели (структура предполагается известной), и задача проектирования наиболее информативных экспериментов для получения неизвестных параметров. Эти обратные инженерные задачи и являются областью исследования текущей Задачи, именованой Задачей Оценки Параметров Модели.

Желаемый результат «Задача Оценки Параметров Модели» — это разработка, совершенствование и применение методов оптимизации (для оценки параметров модели) и проектирование экспериментов, которые особенно хорошо подходят для сложных моделей: высоко-параметризованных, для ограниченного, часто довольно зашумлённого, набора данных. Несмотря на то, что с подобными условиями часто приходиться сталкиваться при моделировании биологических систем, задача оценки параметров и планирования итеративных экспериментов остается одной из самых сложных задач в системной биологии (5-8).

## Описание Задачи

Участникам предоставляются структуры трёх генно-регуляторных сетей с генами 6, 7 и 9. Поскольку ясно, что смоделированы мРНК и белки, заданы соответствующие им переменные 12, 14 и 18.

### Описание генных сетей

Модели, представленные в данной Задаче предполагают линейность кинетики для деградации мРНК и для трансляции и деградации белка. В большинстве случаев, мРНК синтез (транскрипция) моделируется нелинейно (по Хиллу) — функции 1 или 2 (факторы транскрипции), каждая из которых является либо активирующей или ингибирующей. В случае, когда нет регуляции транскрипции, скорость транскрипции предполагается постоянной. Формулы этих кинетических законов указаны далее.

### Данные, используемые для оценки параметров

Даны топологии генных сетей, даны математические модели. Время ограничено и дан некий «стартовый» набор данных. Эти данные могут быть использованы в ранних стадиях оценки параметров. Кроме того, с учетом условий, которые существуют в реальной научной практике, участникам дана также возможность т.наз. вируальной "покупки" дополнительных экспериментальных наборов данных с определёнными возмущениями и/или с определёнными экспериментальными методами.

Наборы данных, которые будут использоваться в качестве входных для оценки параметров были сформированы (искусственно, путем моделирования) с учётом различных возмущений в генной сети, которые включают делеции гена, (siRNA-mediated knockdown) и изменение активности RBS (сайтов связывания рибосом). Обратите внимание на раздел «Прайс-лист: возмущения и экспериментальные измерения», там представлен список доступных экспериментов и их стоимости. Для каждого из типов возмущений команды могут приобрести данные в изобилии для любой мРНК (для всех генов) или белка (для 2 белков по выбору). Цены варьируются для каждого из них, отражая относительную легкость или трудоёмкость получения такого рода данных в реальности.

### Оцениваемые параметры

Все константы скорости деградации мРНК во всех трех моделях были зафиксированы в значении 1 и, следовательно, не требуют оценки участниками. Единица времени нормализуется величиной, обратной скорости деградации мРНК; следовательно, время обезразмерено и измеряется в единицах полураспада мРНК. Аналогичным образом, значения всех констант скорости деградации белка в исходных моделях идентичны, но их стоимость неизвестна и должна быть оценена из данных, это уже часть задачи. Все другие параметры модели должны быть точно так же оценены по данным. Для каждого процесса регулирования транскрипции (активация и репрессия), есть два оцениваемых параметры: `K_d` и `h` (о `b` будет сказано далее). Для каждого процесса генерации белка существует два параметра, которые должны были бы быть оценены: сила промотора и прочность сайтов связывания рибосом. Скорость транскрипции для данного гена предполагается пропорциональной силе соответствующего промотора. Скорость трансляции предполагается пропорциональной прочности сайтов связывания рибосом.

### Прайс-лист: возмущения и экспериментальные измерения

Выделено бюджета для каждого участника — 10 000 кредитов на модель. Стоимости данных представлены ниже, в трёх таблицах.

### Возмущения

При запросе данных, команды определяют тип возмущений и ген, на который направлены возмущения трёх возможных типов. Они приведены в таблице. Во всех случаях возмущения могут затрагивать только один ген. Удаление гена приводит к полной ликвидации как мРНК и белка целевого гена. В случае миРНК (малые интерферирующие РНК) мРНК деградирует (уменьшение в 5 раз), что приводит к уменьшению как мРНК так и концентрации белка. И, наконец, изменения RBS (сайты связывания рибосом) активности приводит к модификации экспрессии белка для целевого гена, не влияя на концентрацию мРНК.

Таблица 1. Тип и виртуальная стоимость доступных возмущений

Возмущения                                                                               | Цена |
-----------------------------------------------------------------------------------------|------|
Делеции в определённом гене для устранения определённой мРНК и соответствующих ей белков | 800  |
мРНК нокдаун с помощью миРНК для деградации мРНК (уменьшение в 5 раз)                    | 350  |
Повышение активности RBS в два раза для увеличения скорость трансляции                   | 450  |

### Вычислительные эксперименты

...

### Определение `K_d` и `h`

...

## Модели и данные

Полные структуры моделей представлены в графическом формате. Пример такого представления для одной из моделей приведён ниже.

![](https://raw.githubusercontent.com/latur/DREAM6/master/img/model1-600x470.png)

![](https://raw.githubusercontent.com/latur/DREAM6/master/img/diagram_key-267x303.png)

Переменные помечены в соответствии с их типом. Например, переменные в модели, представляющей концентрацию белка, помечены как p1, p2, ... p6. Значения каждого символа в генной сети подробно объясняются в легенде (второй рисунок). В скобках перечислены префиксы к переменным модели. Каждая линия соединяет кодирующую белок последовательность с процессом создания белка и соответствует префиксу «pp». Создание белка состоит из двух логических частей: транскрипция и трансляция. Для простоты, эти два этапа, изображённые на схеме ниже, не показаны в диаграмме генной сети. Имена переменных для мРНК, результата транскрипции кодирующей последовательности, имеют префикс «pp». Например, мРНК, соответствующая `pp3` будет именована как `pp3_mrna`

![](https://raw.githubusercontent.com/latur/DREAM6/master/img/protein_production_subfigure-500x267.png)

Этот же фактор транскрипции может регулировать транскрипцию одного или более генов (например, `p4` регулирует `cod5` и `cod6`, соответственно, через сайты `rs3` и `rs3`). В этих случаях контроль фактора транскрипции для разных генов может быть разным, если соответствующие им параметры разные. Кроме того, скорость трансляции может отличаться, если отличаются сайты связывания рибосом.

Процесс транскрипции моделирован с помощью одного уравнения скорости. Это уравнение скорости выражено в виде суммы транскрипционной активности всех активаторов в области промотора, умноженной на произведение транскрипционной активности (RS) из всех репрессоров сайтов связывания в том же регионе. Например, скорость транскрипции `pp4_mrna` будет смоделирована как `pro4_strength` * `as4` * `rs2`, где:

![](https://raw.githubusercontent.com/latur/DREAM6/master/img/equation1.jpg)

![](https://raw.githubusercontent.com/latur/DREAM6/master/img/dream6_paramestimation_figure3.png)

Скорость производства белка `p4` получается как `rbs4_strength` * `pp4_mrna`. Например, в схеме ниже скорость транскрипции `pp3_mrna` моделируется как `pro3_strength` * (`as1` + `as3`)

![](https://raw.githubusercontent.com/latur/DREAM6/master/img/dream6_paramestimation_figure4.png)

Полный список формул [здесь](https://github.com/latur/DREAM6/blob/master/model1_equations_final.pdf)


### Модели

В дополнение к файлам изображений для 3 сетей (в формате «.jpg») участники могут загружать различные математические модели для описания сетей в четырех форматах: SBML (Язык разметки системной биологии — расширение «.xml»), Matlab (расширение «.m»), TinkerCell (расширение «.tic») (9) и «.txt» (10). Файлы именуются так: `model<i>.<ext>` (где `<i>` —  номер модели, `<ext>` — расширение).

Приложения: для чтения [TinkerCell](http://www.tinkercell.com/downloads-2), для открытия [Antimony-скриптов](http://antimony.sourceforge.net/) (в «.txt» файлах), для чтения форматов типа SBML — [здесь](http://sourceforge.net/projects/jdesigner/files/Systems%20Biology%20Workbench/2.8.1/) и [здесь](http://webservices.cs.uni-tuebingen.de/)

### Данные

Сперва все участники получат изначальные данные для каждого вида мРНК для каждой модели. Соответствующие результаты моделирования начальных условий следующие: Для модели 1 и 2: при t = 0, все виды мРНК == 0, и все белковые концентрации == 1. Для модели 3: при t = 0, все виды мРНК и все белковые концентрации (с  исключением `p1`) установлены == 0, в то время как `p1` =< 5. Эти данные содержаться в файле: 
`array_mod_<i>_wildtype.tab` (`<i>` — номер модели)

Веб-интерфейс уже находится в стадии разработки, что позволяет легко получить данные. Этот интерфейс будет доступен в начале июня 2011 года. Пользователи должны указать тип возмущения, которые должны выполняться в их модели, а также тип данных, которые они хотели бы приобрести (РНК микрочип и/или концентрации белка). Кредиты будут автоматически списывается со счета участника команды в соответствии с правилами, описанными выше. 

### Форматы, Начальные условия и шум

Файлы микрочипов (имена файлов вида `array_*.tab`), содержащие (разделённые табуляцией) временные следы распространенности мРНК для всех транскриптов в данной модели, в моменты времени, указанные в первой колонке. Файлы белковых-пар вида `pj_pk_*.tab` содержат временные следы белков `pj` и `pk` распространенность их в данной модели, в моменты времени, указанные в первой колонке. Здесь начальные условия для временных следов такие: Для модели 1 и 2: при t = 0, все виды мРНК устанавливаются в 0, и все концентрации белка установлены в 1. Для модели 3: при t = 0, все виды мРНК и все концентраций белка (за исключением `p1`) установлены в 0, в то время как `p1` установлен на 5. Исходные условия такие же, даже в случае возмущений в системе. Например, если ген 3 будет удален в модели 1, соответствующий ему белок `p1` будет по-прежнему иметь начальное состояние `p3` = 1 при t = 0. Кроме того, в обоих формах данных шумы измерений моделируется путем добавления произвольного шума в стоимость каждой переменной. Точнее, пусть `v` — имитируемое значение, тогда

`v_noisy` = Max( 0, `v` + 0.1 \* `g1` + `C` \* `g2` \* `v` )

Где `g1` и `g2` — гауссовские случайные величины со стандартным отклонением 1 и `C` = 0.2 для обоих измерений мРНК и для измерений белка. То есть, для малых `v` стандартное отклонение шума близко к 0.1, в то время как для большой величины `v`, значение `v_noisy` имеет коэффициент вариации `C` = 20% в обоих измерениях белков и мРНК.

## Метрики оценок результатов

Оценка будет осуществляться на основе точности оценок параметров модели и точности моделирования.

Ибо нет стандарта или очевидного способа оценки результатов, который бы оптимально учёл непотраченные кредиты, участникам предлагается потратить весь виртульный бюджет.

Общий показатель для оценки прогнозов будет подсчитан путём объединения баллов, рассчитанных отдельно для каждой модели. Метрика стандартная — будет основываться на сумме квадратов коэффициентов между предполагаемыми и известных параметрами и на сумме квадратов разностей между предсказанным и моделируемом количестве белка.

Точное определение системы оценок для задачи можно найти в [этом документе](https://github.com/latur/DREAM6/blob/master/dream6_paramest_scoring.pdf).

## References

1. De Smet, R., and Marchal, K. 2010. Advantages and limitations of current network inference methods. Nat Rev Microbiol 8:717-729.
2. Marbach, D., Prill, R.J., Schaffter, T., Mattiussi, C., Floreano, D., and Stolovitzky, G. 2010. Revealing strengths and weaknesses of methods for gene network inference. Proc Natl Acad Sci U S A 107:6286-6291.
3. Stolovitzky, G., Monroe, D., and Califano, A. 2007. Dialogue on reverse-engineering assessment and methods: the DREAM of high-throughput pathway inference. Ann N Y Acad Sci 1115:1-22.
4. Prill, R.J., Marbach, D., Saez-Rodriguez, J., Sorger, P.K., Alexopoulos, L.G., Xue, X., Clarke, N.D., Altan-Bonnet, G., and Stolovitzky, G. 2010. Towards a rigorous assessment of systems biology models: the DREAM3 challenges. PLoS One 5:e9202.
5. Banga, J.R. 2008. Optimization in computational systems biology. BMC Syst Biol 2:47.
6. Sun, J., Garibaldi, J.M., and Hodgman, C. 2011. Parameter Estimation Using Meta-Heuristics in Systems Biology: A Comprehensive Review. IEEE/ACM Trans Comput Biol Bioinform.
7. Fernandez Slezak, D., Suarez, C., Cecchi, G.A., Marshall, G., and Stolovitzky, G. 2010. When the optimal is not the best: parameter estimation in complex biological models. PLoS One 5:e13283.
8. Kreutz, C., and Timmer, J. 2009. Systems biology: experimental design. FEBS J 276:923-942.
9. Chandran, D., Bergmann, F.T., and Sauro, H.M. 2009. TinkerCell: modular CAD tool for synthetic biology. J Biol Eng 3:19.
10. Smith, L.P., Bergmann, F.T., Chandran, D., and Sauro, H.M. 2009. Antimony: a modular model definition language. Bioinformatics 25:2452-2454.
