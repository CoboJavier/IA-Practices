function F = myHistogram(PP)
P=double(PP);
hc(1,:)=0:255;

for k=1:256
   XP3=P==hc(1,k);
   hc(2,k)=nnz(XP3);
end
F=hc;
end

