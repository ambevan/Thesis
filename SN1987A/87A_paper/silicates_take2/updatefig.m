fig=gcf;
%set(findall(fig,'-property','FontSize'),'FontSize',18)
%axesObj=fig.Children
%set(axesObj(2),'FontSize',14)
%set(axesObj(1),'FontSize',14)
str=get(fig,'FileName');
%savefig(str)
str2=str(1:end-4);
%text(-0.75,5.15,'$M=4 \times 10^{-5}M_{\odot}$','FontSize',20,'Interpreter','Latex')
%text(-0.74,4.75,'$a=0.13 \mu$m','FontSize',20,'Interpreter','Latex')
%text(-0.74,4.35,'composite','FontSize',20,'Interpreter','Latex')
savefig(str2)
saveas(gcf,[str2,'.eps'],'epsc')