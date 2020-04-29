function F = myMcC_P2(X,W,Theta)
yhat=X*W;
t=X*W;
yhat(yhat > Theta)=1;
yhat(yhat <= Theta)=0;
F=yhat;

end

