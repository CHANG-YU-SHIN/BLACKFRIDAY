/*X1:年齡：1: 0-17, 2:18-25, 3:26-35, 4:36-45, 5:46-50, 6:51-55, 7:55+

X2:性別(Gender) 1:M 2:F

X3:婚姻狀態(Marital_Status) 0:未婚 1:已婚
Y1:3種產品之購買次數*/
data G06;
do y=1 to 3; do mari= 1 to 2;
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
*proc print;
proc genmod; class  y age gender mari;
model  w=  y|age|gender|mari /dist=poi link=log type3 p r obstat;
run;
proc genmod; class  y age gender mari;
model  w=   y|age|gender y|age|mari  y|gender|mari age|gender|mari /dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model  w=   y|age|gender y|age|mari  y|gender|mari /dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model  w=   y|age|gender y|age|mari  age|gender|mari /dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model  w=   y|age|mari  y|gender|mari age|gender|mari /dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model  w=   y|age|gender  y|gender|mari age|gender|mari/dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model w=  y age|gender|mari/dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model w=  age y|gender|mari/dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model w=  gender y|age|mari/dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model w=  mari y|age|gender/dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model w=  y|age/dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model w=  y|gender/dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model w=  y|mari/dist=poi link=log type3 p r;
run;proc genmod; class  y age gender mari;
model w=  age|gender/dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model w=  age|mari/dist=poi link=log type3 p r;
run;
proc genmod; class  y age gender mari;
model w=  gender|mari/dist=poi link=log type3 p r;
run;

/*proc genmod; class  y mari age gender;
model  w=   y mari|age|gender /dist=poi link=log type3 p r;
run;
proc genmod; class  y mari age gender;
model  w=   y|mari /dist=poi link=log type3 p r;
run;
/*proc genmod; class  y mari age gender;
model  w=   y mari age|gender /dist=poi link=log type3 p r;
run;
/*
proc genmod; class  y mari age gender;
model  w=  y| mari y|age y|gender mari|age mari|gender age|gender/dist=poi link=log type3 p r;
run;
proc genmod; class  y mari age gender;
model  w=   y|age y|gender mari|age mari|gender age|gender/dist=poi link=log type3 p r;
run;
proc genmod; class  y mari age gender;
model  w=   y|age  mari|age mari|gender age|gender/dist=poi link=log type3 p r;
run;
proc genmod; class  y mari age gender;
model  w=   y|age y|gender  mari|gender age|gender/dist=poi link=log type3 p r;
run;
/*proc genmod; class  y mari age gender;
model  w=   y|age y|gender mari|age  age|gender/dist=poi link=log type3 p r;
run;
proc genmod; class  y mari age gender;
model  w=   y|age y|gender mari|age mari|gender /dist=poi link=log type3 p r;
run;
proc genmod; class  y mari age gender;
model  w=   y  mari|age mari|gender age|gender/dist=poi link=log type3 p r;
run;
proc genmod; class  y mari age gender;
model  w=  mari  y|age y|gender  age|gender/dist=poi link=log type3 p r;
run;*/
