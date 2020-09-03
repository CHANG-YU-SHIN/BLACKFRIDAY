
data g06; 
do y=1 to 3; do marital_statusa= 1 to 2;
do age= 1 to 7;
do gender=1 to 2;
input w @@;
output;
end; end; end;
end;input;
cards ;
9754.5 4953.5
59053.5 17940.5
101135.5 29389.5
48687.5 16305.5
9273.5 3059.5
7155.5 3484.5
5786.5 1844.5
0.5 0.5
14524.5 6177.5
64207.5 19599.5
32392.5 10115.5
22397.5 9797.5
20829.5 6105.5
10188.5 3085.5
6884.5 3582.5
41533.5 12494.5
70311.5 19671.5
33796.5 11308.5
6262.5 2044.5
4916.5 2264.5
3942.5 1318.5
0.5 0.5
10107.5 4122.5
44312.5 13451.5
22139.5 6926.5
15500.5 6635.5
14380.5 4092.5
6659.5 1943.5
3237.5 1552.5
19261.5 5280.5
32087.5 1195.5
15327.5 4857.5
2662.5 852.5
2170.5 892.5
1706.5 524.5
0.5 0.5
4658.5 1690.5
20465.5 5569.5
9703.5 2871.5
6901.5 2720.5
6369.5 1587.5
2800.5 743.5
;
proc print;

proc freq; tables gender*y/all;weight w;
run;
data g0622; set g06;
if y in (1, 2);
proc freq; tables gender*y/all;weight w;
run;
data g0622; set g06;
if y in (1, 3);
proc freq; tables gender*y/all;weight w;
run;
data g0623; set g06;
if y in (2,3 );
proc freq; tables gender*y/all;weight w;
run;
/*X1*Y*/
data g0621; set g06;
if age in (1, 2) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 3) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 4) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 5) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 6) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 7) and y in (1,2);
proc freq; tables y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 3) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 4) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 5) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 6) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 7) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (3, 4) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (3, 5) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (3, 6) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (3, 7) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0622; set g06;
if age in (4, 5) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (4, 6) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (4, 7 ) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0623; set g06;
if age in (5,6 ) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (5, 7) and y in (1,2);
proc freq; tables y*age/all;weight w;
run;
data g0623; set g06;
if age in (6,7 ) and y in (1,2);
proc freq; tables  y*age/all;weight w;
run;


data g0621; set g06;
if age in (1, 2) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 3) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 4) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 5) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 6) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 7) and y in (1,3);
proc freq; tables y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 3) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 4) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 5) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 6) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 7) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (3, 4) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (3, 5) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (3, 6) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (3, 7) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0622; set g06;
if age in (4, 5) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (4, 6) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (4, 7 ) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0623; set g06;
if age in (5,6 ) and y in (1,3);
proc freq; tables y*age/all;weight w;
run;
data g0621; set g06;
if age in (5, 7) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;
data g0623; set g06;
if age in (6,7 ) and y in (1,3);
proc freq; tables  y*age/all;weight w;
run;


data g0621; set g06;
if age in (1, 2) and y in (2,3);
proc freq; tables y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 3) and y in (2,3);
proc freq; tables y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 4) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 5) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 6) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (1, 7) and y in (2,3);
proc freq; tables y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 3) and y in (2,3);
proc freq; tables y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 4) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 5) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 6) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (2, 7) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (3, 4) and y in (2,3);
proc freq; tables y*age/all;weight w;
run;
data g0621; set g06;
if age in (3, 5) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (3, 6) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (3, 7) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0622; set g06;
if age in (4, 5) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (4, 6) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (4, 7 ) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0623; set g06;
if age in (5,6 ) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0621; set g06;
if age in (5, 7) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
data g0623; set g06;
if age in (6,7 ) and y in (2,3);
proc freq; tables  y*age/all;weight w;
run;
