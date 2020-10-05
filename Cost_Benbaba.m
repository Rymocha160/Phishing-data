
## Author: Administrateur <Administrateur@RYM-PC>
## Created: 2018-12-21

function cost = Cost_Benbaba  (X, y ,theta)
  #initialisation 
  #m=taile de vecteur y
  m=length(y);
  
  h=hypothesis_Benbaba(theta, X); #calcule d'hypothèse
  cost=(1/(2*m))*(sum((h-y).^2)); #la fonction cost

endfunction
 