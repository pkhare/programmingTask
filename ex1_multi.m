%% Initialization

%% ================ Part 1: Feature Normalization ================

%% Clear and Close Figures
clear ; close all; clc

fprintf('Loading data ...\n');

%% Load Data


data = load('zalora_products.txt');
X = data(1:50, 2:4);
y = data(1:50,5);
m = length(y);

% Print out some data points
fprintf('First 10 examples from the dataset: \n');
fprintf(' x = [%.0f %.0f], y = %.0f \n', [X(1:10,:) y(1:10,:)]');

fprintf('Program paused. Press enter to continue.\n');
pause;

% Scale features and set them to zero mean
fprintf('Normalizing Features ...\n');

[X mu sigma] = featureNormalize(X);

% Add intercept term to X
X = [ones(m, 1) X];
%mu
%sigma
%theta = zeros(3, 1);

% compute and display initial cost
%computeCostMulti(X, y, theta)

%% ================ Part 2: Gradient Descent ================

fprintf('Running gradient descent ...\n');

% Choose some alpha value
alpha = 0.01;
num_iters = 400;

% Init Theta and Run Gradient Descent 
%theta = zeros(3, 1);
theta = zeros(4, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');

% Estimate the most recent trends in product sub category jeans 
% ====================== YOUR CODE HERE ======================
% Recall that the first column of X is all-ones. Thus, it does
% not need to be normalized.

%t=[559501, -4.914285714, 22.0952381];
%t=[252857,-0.876190476,89.11904762;559501, -4.914285714, 22.0952381];

newd = [371931,394667,-5.185714286,-39.25714286; 540124,444824,-14.91428571,-68.09047619; 534382,605965,-4.695238095,-51.99047619; 280533,341969,-15.9952381,-112.9095238; 291001,257900,1.414285714,353.7047619; 273696,252857,-0.876190476,89.11904762; 378355,350703,1.319047619,328.4142857; 540137,434069,-2.1,-142.5857143; 271620,400757,-3.857142857,30.85714286];

t = newd(:,2:4);

%price = [1, (t-mu)./sigma] * theta;
trends = [ones(size(t,1),1),(t-mu)./sigma]*theta;
final = [newd(:,1) trends];

final
sortrows(final,2)

% ============================================================

fprintf('Program paused. Press enter to continue.\n');
pause;






