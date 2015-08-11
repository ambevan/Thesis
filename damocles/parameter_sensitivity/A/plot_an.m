function ymax=plot_an(b,p)
b=b*2;
%plot symbolic function
syms u
if b==2
    y=-log(abs(u))
else
    y=-(u^(2-b)-1)/(2-b);
end

if p==1 
    y2=@(u) subs(y,'u',u);
    ymax=double(y2(0.2))
    hold on;
    p1=ezplot(y/ymax,[-1,-0.2])
    set(p1,'Color','Blue')
    set(p1,'LineStyle','--')
    p2=ezplot(y/ymax,[0.2,1])
    set(p2,'Color','Blue')
    set(p2,'LineStyle','--')
    syms x
    l=(1+x-x)
    p3=ezplot(l,[-0.2,0.2])
    set(p3,'Color','Blue')
    set(p3,'LineStyle','--')
else
    y2=@(u) subs(y,'u',u);
    ymax=double(y2(0.0023));
    hold on;
    p1=ezplot(y/ymax,[-1 1])
    set(p1,'Color','Blue')
    set(p1,'LineStyle','--')
end

xlim([-1 1])
ylim([0 1.15])
if b==2
    pleg=legend('model','$i(r) \sim -\log (u)$')
    pleg.FontSize=16
    pleg.Interpreter='Latex'
else
    pleg=legend('model','$i(u) \sim 1-u^{2(1-\beta)}$')
    pleg.FontSize=16
    pleg.Interpreter='Latex'    
end
pleg.Position=[0.67 0.83 0.18 0.07]
xlabel('velocity','Interpreter','LaTex','FontSize',16)
ylabel('flux','Interpreter','LaTex','FontSize',16)
title('')

h=annotation('textbox')
h.FontSize=16
h.LineStyle='none'
h.Position=[0.17 0.83 0.4 0.07]
h.String='$\beta = 1.0$'
h.Interpreter='Latex'

set(gca,'FontSize',16)
set(findall(gcf,'type','text'),'FontSize',16)

h1=annotation('textbox')
h1.FontSize=16
h1.LineStyle='none'
h1.Position=[0.17 0.78 0.4 0.07]
h1.String='$R_{in}/R_{out}=0.0$'
h1.Interpreter='Latex'