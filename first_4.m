clear,clc;
%������-1����Ŀǰδ֪�����������Ϊ1
%������-2����Ŀǰδ֪�����������Ϊ0
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
I=rmaxn(find(sr==rmax & sr(rmaxn)-sl(rmaxn)==lmax));%I����ı��

while(lmax>rmax(find()))

end
