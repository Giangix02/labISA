module CSA (
    input logic[10:0] A,
    input logic[10:0] B ,
    input logic Cin , 
    output logic[10:0] S,
    output logic Cout
);

logic [3:0] first0temp;
logic [3:0] first1temp;
logic [3:0] second0temp;
logic [3:0] second1temp;
logic [2:0] CtempA;
logic [5:0] CtempB;
logic [5:0] CtempC;


HA a(A[0],B[0],CtempA[0],S[0])

generate
    genvar = i
    for (i=1;i<3,i++)
        FA a(A[i],B[i],CtempA[i-1],CtempA[i],S[1]);
endgenerate
CtempB[0] = 0;
CtempC[0] = 1;

generate 
    genvar = k
    for (k = 3; k < 7, k++)
        FA b(A[k],B[k],CtempB[k-3],CtempB[k-2],first0temp[k-3]);
        FA c(A[k],B[k],CtempC[k-3],CtempC[k-2],first1temp[k-3]);
endgenerate


