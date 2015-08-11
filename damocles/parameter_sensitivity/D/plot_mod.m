function maxf=plot_mod(filename,p,i)
s=16
snum=14
%l=filename(:,1)
v=filename(:,2)/1e4;
f=filename(:,3);
if p==1
    maxf=mean(f(1607:1633));
else
    maxf=max(smooth(f,2));
end
f=f/maxf;
plot(v,f);
xlim([-1.2 1.2])
   
%xlabel('velocity','Interpreter','LaTex','FontSize',14)
%ylabel('flux','Interpreter','LaTex','FontSize',14)
%title('')

set(gca,'FontSize',16)
set(findall(gcf,'type','text'),'FontSize',16)

set(gca,'ytick',[0 0.25 0.5 0.75])
set(gca,'xtick',[-1 0 1 ])
if i<10
    set(gca,'xticklabel',{})
end 

if mod(i,3)~=1
    set(gca,'yticklabel',{})
end


% h=annotation('textbox')
% h.FontSize=s
% h.LineStyle='none'
% h.Position=[0.77 0.83 0.4 0.07]
% h.String='$\omega = 0.0$'
% h.Interpreter='Latex'

set(gca,'FontSize',snum)
set(findall(gcf,'type','text'),'FontSize',snum)

% h1=annotation('textbox')
% h1.FontSize=s
% h1.LineStyle='none'
% h1.Position=[0.774 0.79 0.4 0.07]
% h1.String='$\tau=1.0$'
% h1.Interpreter='Latex'

line([0,0],ylim,'Color','black','LineWidth',0.01,'LineStyle',':')
line([0.2,0.2],ylim,'Color','red','LineWidth',0.01,'LineStyle',':')
line([-0.2,-0.2],ylim,'Color','red','LineWidth',0.01,'LineStyle',':')

% xlabel('velocity','Interpreter','LaTex','FontSize',s)
% ylabel('flux','Interpreter','LaTex','FontSize',s)
% title('')



