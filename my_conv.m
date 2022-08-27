function y=my_conv(signal1,signal2)
y=zeros(1,(length(signal1)+length(signal2)-1));                                  
xl=length(signal1);
hl=length(signal2);
signal1=[signal1,zeros(1,hl-1)];
signal2=[signal2,zeros(1,xl-1)];
for i=1:length(y)
    k=1;
    for j=i:-1:1
        y(i)=y(i)+signal1(j)*signal2(k);        
        k=k+1;
    end
end 