function dtft=findDTFT(i_signal,sym_var,omega,lower_limit,upper_limit)
tic
dtft=symsum(i_signal*exp(-i*omega*sym_var),sym_var,lower_limit,upper_limit);
toc
dtft=abs(dtft);
end