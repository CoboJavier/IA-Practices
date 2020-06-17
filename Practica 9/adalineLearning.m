function F = adalineLearning(X,y,w_ini,gamma,goal_error)

yhat = adalineOutput(X, w_ini);

error = computeADE(y,yhat);
m=size(X,1);

w = w_ini;
w_values=w_ini';
contador=0;
fprintf ('el error inicial es %d  \n',error)

while error > goal_error
    contador=contador+1;
    %fprintf ('Entrando al while por %d  \n',contador);
    for i=1:m
       fprintf ('Entrando al while por %d , Ejemplo numero %d  \n',contador,i);
       x_iT=X(i,:);
       x_iaumT = [1,x_iT];
       yhat_i=x_iaumT*w;
       format short;
       w = w + gamma*(y(i)-yhat_i) * x_iaumT';
       w_values=[w_values;w'];
            
    end
    
 y_hat = adalineOutput(X, w);
 error = computeADE(y,y_hat);
 
end

fprintf ('el error es %d  \n',error)
r=w_values;
F=w_values;

end

