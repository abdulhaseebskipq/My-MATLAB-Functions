function [x,n]= shiftmul(x,m,n0,n)
%x is a sequence, m is amplitude multiplier, n0, is shift, n is the support
%for x
n=n+n0;
x=m*sigshift(x,n,n0);
end


