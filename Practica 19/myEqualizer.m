function FF = myEqualizer(PP)

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
   %ck(2,k)=(AA);
end

DP=double(PP);
ck=double(ck);
P=PP;
for ii=1:I
    for jj=J
        for kk=1:256
            if P(ii,jj)==ck(1,kk)
                
                Xij=(255*ck(2,kk));
                MXij(ii,jj)=round(Xij);
            else
                Xij=(255*ck(2,kk));
                MXij(ii,jj)=round(Xij);
            end
        end
    end
end

FF=MXij;


end

