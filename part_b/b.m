clc;
close all;
clear all;

A = [2 1 1; -1 1 -1; 1 2 3];
% rref(A)
X = sym('x',[1 size(A,1)]).';
O = zeros(1,size(A,1)).';
null_A = [A.*X O]
% size(rref(null_A))
equ = sym('e__',[1 size(A,1)]).';
size(null_A)
null(null_A)
for i = 1:size(null_A,1)
    equ(i) = sum(null_A(i)) == 0;
end

% disp(equ)


% 
% for i = 1:size(null_A,1)
%     equ(i) = null_A(i,1);
%     for j = 2:size(null_A,2)-1
%         equ(i) = equ(i) + null_A(i,j)
%     end
%     equ(i) == 0
% end

[A,B] = equationsToMatrix(equ.', X.');
Y = linsolve(A,B)