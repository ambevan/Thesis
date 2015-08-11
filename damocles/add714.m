h=gcf;
y=h.Children(2).Children(3).YData
x=h.Children(2).Children(3).XData
s=size(y)

y(s(2))
x(s(2))

load 'd714ext.txt'
diff=d714ext(1,2)*1e13-y(81)
hold on;

plot(d714ext(:,1)*1e-4,d714ext(:,2)*1e13-diff)