function maxf=plot_mod(filename,p)

%l=filename(:,1)
v=filename(:,2)/1e4;
f=filename(:,3);
if p==1
    maxf=mean(f(1607:1633));
else
    maxf=max(smooth(f,2));
end
f=f/maxf;
f=f*0.97
plot(v,f,'Color','red');
xlim([-1 1])

