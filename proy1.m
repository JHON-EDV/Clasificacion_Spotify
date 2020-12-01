close all; clc; clear all;
parcial = readfis('ClassHITF');
inputs=readtable(['spotify_po.csv']);
inputs2 = inputs(:,2:5);
inputs2 = inputs2{:,:};
%%
s = evalfis(parcial,inputs2);
%%
close all; clc;
x = linspace(1,length(s(:,1)),length(s(:,1)));
y = s(:,1);
y2 = s(:,2);  
plot(x,y,'.');
hold on
plot(x,y2,'.');
legend('no hit','hit')  
axis([0 length(s(:,1)) 0 1])

csvwrite(['Salida.csv'],s);