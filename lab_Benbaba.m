
## Author: Administrateur <Administrateur@RYM-PC>
## Created: 2018-12-21
## clear : supprime les variables de WorkSpace
## close all :  ferme toutes les figures ouvertes 
## clc :pour supprimer tout ce qui affiché dans cmd

clear; close all; clc;
graphics_toolkit('gnuplot') #pour les grandes nombres
X = load('input1.txt');
y = load('Output.txt');
m = length(y); #=97 dans ce cas  taille de vector y
theta = zeros(2, 1); #tab de 2ligne et une colonnne initialiser à 0
iterations = 50;#nbr ditérations'
alpha = 0.001;
%plot hypothesis
plot(X, y, 'bx'); 
title('GRAPHE'); #titre de graphe
xlabel('Surface maison');#nom dans ave des X
ylabel('Prix');#nom dans axe des y

%add 1 vecteur de 1 dans X0 au vecteur X
X = [ones(size(X,1), 1), X];
%la fonction cost
cost = Cost_Benbaba(X, y, theta); #calculer l'erreur dans cost
%fonction gradient descent
[ theta, cost_vect] = GradientDescent_Benbaba(X, y, theta, alpha, iterations);
#pour calculer theta et nvl cost_vect de la foction cost

hold on;#affichage sur le même graphe
Plot_Hypothesis_Benbaba (theta, X)#regression linéaire
l={'Données', 'Regression Linéaire'};
legend(l,'Location','southwest'); #position de legend 
legend('boxoff')#pas de box
#title(lgd,'My Legend Title')
hold off;
#crée autre figure
figure(2);hold on;#maintenant on affiche dans un autre graphe
plot_Cost_Benbaba (iterations, cost_vect)
title('Fonction Cost');#titre de grahe
xlabel('theta');#nom axe x
ylabel('J(theta)');#nom axe y

hold off;