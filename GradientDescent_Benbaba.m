
## Author: Administrateur <Administrateur@RYM-PC>
## Created: 2018-12-21

function [theta, cost_vect] = GradientDescent_Benbaba (X, y, theta, alpha, iterations)
 %initialisations 
  m=length(y); #taille de vector y
  cost_vect=zeros (iterations, 1); #tab nbrligne=iterations
  %boucler de 1 à itérations
  for i=1 : iterations,
    #h=x*theta;
    h=hypothesis_Benbaba(theta, X);#recuperer la valeur de hypothèse
    t1=theta(1) - (alpha *(1/m) * sum(h-y));
    t2=theta(2) - (alpha *(1/m)*sum((h-y).*X(:,2)));
    %update theta(1) et theta(2)
    theta(1) =t1;
    theta (2)=t2;
    cost_vect(i)= Cost_Benbaba(X,y,theta);
  endfor

endfunction
