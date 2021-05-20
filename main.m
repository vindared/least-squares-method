clear all
close all

%% Hauptskript zur Aufgabe 4 aus Uebung 2 (Regression mit Gradientenverfahren)
%  Notation:
%           Regresseor          ... S
%           i-te Zeile aus S    ... siT
%           Daten x             ... X
%           Daten y             ... Y
%           Parameter           ... p bzw. pk (in der k-ten Iteration)
%           alpha               ... Schrittweite
%           J bzw Jold          ... Kosten bzw. Kosten aus vorheriger Iteration
%           |pk - pk-1|         ... dp

% Datenpunkte laden:
tmp = load('X.mat');
X(:,1) = tmp.x;
tmp = load('Y.mat');
Y(:,1) = tmp.y;
clear tmp

% Anonyme Funktion fuer einen Subvektor von S
siT = @(x) [1,x,x^2,x^3];

% Erzeuge S
S = zeros(length(X),length(siT(0)));
for i = 1:length(X)
    %% Hier erweitern:
    %S(i,:) = ...;
end


% Loesung mit Gradientenverfahren
alpha = 10; % Startwert Schrittweite
pk = ones(length(siT(0)),1); % Startwert Parameter
Jold = (S*pk - Y).'*(S*pk - Y); % Kosten am Startwert
for i = 1:10000
    %% Hier erweitern
    ...
    
    % Konvergenzkriterium
    if dp < 1e-6
        break;
    end
end

%% Plotten
t = min(X):0.01:max(X);
sol = pk(1) + pk(2).*t + pk(3).*t.^2 + pk(4).*t.^3;

figure;
plot(X,Y,'ro',t,sol,'b','LineWidth', 2);
grid on
