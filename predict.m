function p = predict(Theta1,Theta2,X)
%PREDICT Predict the label of an input given a trained neural network
m=size(X,1);
num_labels=size(Theta2,1);
p=zeros(size(X,1),1);
a1=[ones(size(X,1),1) X];
z2=a1 * Theta1';
a2=sigmoid(z2);
a2=[ones(m,1) a2];
z3=a2 * Theta2';
p=sigmoid(z3);
[~,p]=max(p,[],2); %index of max probability
end
