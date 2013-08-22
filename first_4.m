clear,clc;
%矩阵中-1代表目前未知，但给出结果为1
%矩阵中-2代表目前未知，但给出结果为0
a=[
1	1	-2	0	0
1	-1	0	-1	1
1	0	1	1	-1
0	0	-2	1	1
-1	0	0	-2	-2
1	1	1	-1	 -2
];
b=[
0	1	1	-2	1
1	0	-2	-2	1
-2	-1	-2	1	0
1	1	-2	0	-2
0	1	1	-1	0
-1	1	-1	-1	1];
ele=6;
pro=5;
cl=ones(ele,pro);
cl(find(a==0))=0;
cl(find(b==0))=0;
sl=pro-sum(cl,2);
cr=zeros(ele,pro);
cr(find(a==1 & b==1))=1;
sr=pro-sum(cr,2);

rmax=max(sr);
rmaxn=find(sr==rmax);
lmax=max(sr(rmaxn)-sl(rmaxn));
I=rmaxn(find(sr==rmax & sr(rmaxn)-sl(rmaxn)==lmax));%I区间的编号

while(lmax>rmax(find()))

end
