function ngaussel(A,b)
% Solve the system Ax=b using naive gaussian elimination
n=length(b);
x=zeros(n,1);
% if A(1,1)==0
%     error('The Pivoting Element of first row is zero');
% end
fprintf('\n');
disp('      The augmented matrix is')

% augm =[A b];% cat(2, A,b)
for k=1:n-1% series
   for i=k+1:n % intra-steps
      m=A(i,k)/A(k,k);
      for j=k+1:n
         A(i,j)=A(i,j)-m*A(k,j);
      end
      A(i,k)=m;
      b(i)=b(i)-m*b(k);
   end
end
x(n)=b(n)/A(n,n);
for i=n-1:-1:1
   S=b(i);
   for j=i+1:n
      S=S-A(i,j)*x(j);
   end
   x(i)=S/A(i,i);
end
% Print the results
fprintf('\n');
disp(' The transformed upper triangular augmented matrix C is =')
fprintf('\n');
for i=1:n
   for j=1:n
      if (j<i) A(i,j)=0; end
   end
end
C=[A b]
fprintf('\n');
disp('   Back substitution gives the vector solution')
x


