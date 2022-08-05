%AM=xlsread('Amino.xlsx');
GE=readvars('Genoma.txt');
GE=strjoin(GE);
GE=strrep(GE,' ','');
L=length(GE);


GCO(GE=='A')='T';
GCO(GE=='T')='A';
GCO(GE=='C')='G';
GCO(GE=='G')='C';


ARN(GCO=='A')='U';
ARN(GCO=='T')='A';
ARN(GCO=='C')='G';
ARN(GCO=='G')='C';
A=input('Ingrese el inicio ');
B=input('inquique el final ');
PRO=ARN(A:B);
LP=length(PRO); 
PROA=(1:LP/3);
for i=A:3:B
    Z=PRO(i);
    X=PRO(i+1);
    C=PRO(i+2);
    ZXC=[Z X C];
    ZXC=cellstr(ZXC);
    ZXC=string(ZXC);
    PROA(i)=strcat(char(ZXC));
end
