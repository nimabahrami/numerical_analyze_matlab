%%
clc;clear all;close all;
s=0;
inp=input('Enter a number (0 == end):');
while inp~=0
    s=s+inp;
    inp=input('Enter a number (0 == end):');
end
disp(s)