function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % --------------------------------------------------------------
   
    % number of training examples = m
    % number of features = n  
    % X  --> m * n
    % y  --> m * 1
    % theta --> n * 1

    prediction = X * theta; %  --> m * 1   
    diff = prediction - y; %  --> m * 1
    prodX = diff .* X; %  --> m * n
    sumProdX = sum(prodX); % --> 1 * n
    
    % conversion factor.
    factor = sumProdX * alpha / m;  % --> 1 * n
    factorT = factor';  %  --> n * 1
    
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    theta = theta - factorT;

end

end
