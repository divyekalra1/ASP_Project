clc;
close all;
clear all;

A = [-1 1 2 4; 2 0 1 -7];
fprintf("Matrix A : \n")
disp(A);
X = sym('x',[1 size(A,1)]).';
O = zeros(1,size(A,1)).';

null_A = [A.*X O];
size_null = size(null(null_A));
N = null(null_A);
fprintf("Null matrix of A is : \n")
N = N(1:size_null-1,:);
disp(N);
fprintf("Size of the null matrix of A is : %d x %d\n",size_null(1)-1,size_null(2));