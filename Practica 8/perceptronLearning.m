function F=perceptronLearning(X,y,w_ini)
[m,n]=size(X);
Xaum=[ones(m,1),X];

s=Xaum*w_ini;
s(s>0)=1;
s(s<=0)=-1;
yhat=s;

contar=0;
contarwhi=0;

for i=1:m
if isequal(yhat(i,1), y(i,1))
else
    contar=contar+1;
end
end
MCE=contar/m;
str2 = ['Inicial Mis ERROR ',num2str(MCE)];
disp(str2)
w=w_ini;


while MCE ~= 0
   contarwhi=contarwhi+1;
   contarfor=0;
   
 for i2=1:m
     contarfor=contarfor+1;
       if ~isequal(yhat(i2,1), y(i2,1))
           pq=(y(i2,1)*Xaum(i2,:));
           w=w+pq';
                 
       elseif isequal(yhat(i2,1), y(i2,1))
           
        
       end
       
w_values(i2,:)=w';

s=Xaum*w;
s(s>0)=1;
s(s<=0)=-1;
yhat=s;     
str3 = ['Entrando bucle whjle ',num2str(contarwhi),' instancia ',num2str(contarfor),'...'];
disp(str3)
 end
   
contar=0;

for i=1:m
if isequal(yhat(i,1), y(i,1))
else
    contar=contar+1;
end
end
MCE=contar/m;
str4 = ['Now Mis ERROR ',num2str(MCE)];
disp(str4)

end %END WGILE

flipud(unique(w_values(:,:),'rows'))



end

