function X = myTriplicator(M, A)
if isequal(size(M), size(A))
   X = 2*(M.*A) + A;
   return;
else
   fprintf ('Error: Tama�os distintos'); 
end

end

