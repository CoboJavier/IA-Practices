function F = myCPH(PP)

P=double(PP);
[I,J]=size(P);

hc(1,:)=0:255;

for k=1:256
   XP3=P==hc(1,k);
   hc(2,k)=nnz(XP3);
end

ck(1,:)=0:255;
for k=1:256
   AA=sum(hc(2,1:k));
   ck(2,k)=(AA/(J*I));
end

F=ck;

end

