function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
prediction = sigmoid(X * theta);
j_i =  -y .* log(prediction) - (1 - y) .* log(1 - prediction); % -- cost for ith training set.
J = 1/m * sum(j_i);

% number of training examples = m
% number of features = n  
% X  --> m * n
% y  --> m * 1
% theta --> n * 1
% prediction --> m * 1   
grad_i = (prediction - y) .* X; %  --> m * n
grad = (1/m) * sum(grad_i); % --> 1 * n
grad = grad'; % --> n * 1


  

% =============================================================

end