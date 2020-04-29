function X = myTriplicator(M, A)
if isequal(size(M), size(A))
   X = 2*(M.*A) + A;
   return;
else
   fprintf ('Error: Tamaños distintos'); 
end

end

