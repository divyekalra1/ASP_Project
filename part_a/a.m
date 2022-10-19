%%
clc;
clear all;
close all;
%%
matrix_size = input('Please enter the size of the square matrix A : ');
for i = 1:matrix_size
    for j = 1:matrix_size
        z = input(sprintf('Element at position (%d,%d) of matrix A : ',i,j));
        if(~isnan(z) && floor(z)==z)
            A(i,j) = z;
        else
            disp("Wrong Input")
        end
    end
end
exponent = input('Power you want to calculate :');
calculate_power(A,exponent)
