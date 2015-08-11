function maxf=plot_mult(filename1,filename2,filename3,filename4,p)
   
v1=filename1(:,2)/1e4;
f1=filename1(:,3);
v2=filename2(:,2)/1e4;
f2=filename2(:,3);
v3=filename3(:,2)/1e4;
f3=filename3(:,3);
v4=filename4(:,2)/1e4;
f4=filename4(:,3);

area1=0;
i=9999
while v1(i)<1;
    area1=area1+abs(v1(i,1))*f1(i,1);
    i=i-1;
end
area2=0;
i=9999
while v2(i)<1;
    area2=area2+abs(v2(i))*f2(i);
    i=i-1;
end
area3=0;
i=9999
while v3(i)<1;
    area3=area3+abs(v3(i))*f3(i);
    i=i-1;
end
area4=0;
i=9999
while v4(i)<1;
    area4=area4+abs(v4(i))*f4(i);
    i=i-1;
end

f1=f1/area1;
f2=f2/area2;
f3=f3/area3;
f4=f4/area4;

if p==1
    maxf=mean(f1(1607:1633));
else
    maxf=max(smooth(f1,2));
end
f1=f1/maxf;
f2=f2/maxf;
f3=f3/maxf;
f4=f4/maxf;

f1=smooth(f1,3);
f2=smooth(f2,3);
f3=smooth(f3,3);
f4=smooth(f4,3);

hold on;
%plot(v1,f1)
plot(v2,f2)
plot(v3,f3)
plot(v4,f4)
xlim([-1.1 2])

pleg=legend('$\tau=0.5$','$\tau=1$','$\tau=2$')
pleg.FontSize=13
pleg.Interpreter='Latex'
    
    
xlabel('velocity','Interpreter','LaTex','FontSize',14)
ylabel('flux','Interpreter','LaTex','FontSize',14)
title('')

h=annotation('textbox')
h.FontSize=13
h.LineStyle='none'
h.Position=[0.15 0.83 0.2 0.07]
h.String='$\omega =0.6$'
h.Interpreter='Latex'

