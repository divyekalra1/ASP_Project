clc;
close all;
clear all;
time_start = tic;

A = [1 0; .3 .7];
for i = 1:10000000
    flag = 1;
    B = calculate_power(A,i);
    for j = 1:size(B,1)
        for k = 1:size(B,2)
            if(ceil(B(j,k))<1)
                flag = 0;
                break
            end
        end
    end
    if(flag==1)
        fprintf("Transition matrix A is regular since A^%d has non negative elements only\n",i)
        disp(B)
        break
    else
        if(i>1)
            fprintf("A^%d has non positive entries\n",i-1);
        end
    end
end

time_end = toc(time_start)