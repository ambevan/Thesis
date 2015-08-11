fig=gcf;
set(findall(fig,'-property','FontSize'),'FontSize',18)
axesObj=fig.Children
set(axesObj(2),'FontSize',14)
set(axesObj(1),'FontSize',14)
str=get(fig,'FileName');
savefig(str)
str2=str(1:end-4);
text(-0.74,1.45,'$M=8 \times 10^{-4}M_{\odot}$','FontSize',20,'Interpreter','Latex')
text(-0.74,1.35,'$a=0.13 \mu$m','FontSize',20,'Interpreter','Latex')
text(-0.74,1.25,'composite','FontSize',20,'Interpreter','Latex')
saveas(gcf,[str2,'.eps'],'epsc')