clear;close all;clc
%m =5000
%20 x 20 pixel image
%0 labelled as 10
%no of labels 10 (0 to 9)
%25 hidden units
num_label=10;
input_layer_size=400;
hidden_layer_size=25;
fprintf('Loadding data.....');
%load data
load('data.mat');
m=size(X,1);
n=size(X,2);
%randomly pic 100 points
sel=randperm(size(X,1));
sel=sel(1:100);
%display data
displayData(X(sel,:));
pause;
fprintf('\nPress any key to continue..')

%load the weights into variables Theta1,Theta2
load('weights.mat');

rp = randperm(m);   %returns a row vector with no repeating numbers

for i = 1:m,
  fprintf('\nDisplaying image....\n');
  displayData(X(rp(i),:));
  pred=predict(Theta1,Theta2,X(rp(i),:));
  fprintf('\nNeural network prediction is %d(digit %d)',pred,mod(pred,10));
  choice=input('\nEnter q to exit\n','choice');
  if choice == 'q',
    break;
  end
end
