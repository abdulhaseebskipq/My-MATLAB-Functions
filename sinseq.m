function [n,x]=sinseq(n0,n1)
n=[n0:n1];x=3*cos(0.1*pi*n+pi/3)+2*sin(0.5*pi*n);