h=gcf
h.Children(2).Children
xmod=h.Children(2).Children(2).XData;
xdat=h.Children(2).Children(3).XData;
ydat=h.Children(2).Children(3).YData;
ymod=h.Children(2).Children(2).YData;
col_mod=h.Children(2).Children(2).Color;
col_dat=h.Children(2).Children(3).Color;
hold on;
plot(xmod+0.07,ymod,'--','LineWidth',1.5,'Color',col_mod)
plot(xdat+0.07,ydat,'-','LineWidth',1.5,'Color',col_dat)