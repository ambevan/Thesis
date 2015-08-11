function sigmoid_fit(day,flux)
x0=[1 -8 -0.003];
xdata=day;

f = @(x,xdata) x(1)*exp(x(2)*exp(x(3)*xdata))
a=lsqcurvefit(f,x0,xdata,flux)
f2= @(x) a(1)*exp(a(2)*exp(a(3)*x))

ezplot(f2,[500,10000,1e-4,1.5])

end