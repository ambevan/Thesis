function createfigure(X1, Y1, XData1, YData1, XData2, XData3, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10, Y11, Y12)
%CREATEFIGURE(X1, Y1, XDATA1, YDATA1, XDATA2, XDATA3, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10, Y11, Y12)
%  X1:  vector of x data
%  Y1:  vector of y data
%  XDATA1:  line xdata
%  YDATA1:  line ydata
%  XDATA2:  line xdata
%  XDATA3:  line xdata
%  Y2:  vector of y data
%  Y3:  vector of y data
%  Y4:  vector of y data
%  Y5:  vector of y data
%  Y6:  vector of y data
%  Y7:  vector of y data
%  Y8:  vector of y data
%  Y9:  vector of y data
%  Y10:  vector of y data
%  Y11:  vector of y data
%  Y12:  vector of y data

%  Auto-generated by MATLAB on 04-May-2015 18:49:36

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,'YTick',[0 0.25 0.5 0.75],'XTick',[-1 0 1 2],...
    'FontSize',14,...
    'Position',[0.13 0.76725806451613 0.280416666666667 0.210292955892033],...
    'XTickLabel',{});
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[-1.5 3]);
box(axes1,'on');
hold(axes1,'on');

% Create plot
plot(X1,Y1,'Parent',axes1);

% Create line
line(XData1,YData1,'Parent',axes1,'LineWidth',0.01,'LineStyle',':');

% Create line
line(XData2,YData1,'Parent',axes1,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create line
line(XData3,YData1,'Parent',axes1,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create axes
axes2 = axes('Parent',figure1,'YTick',[0 0.25 0.5 0.75],'XTick',[-1 0 1 2],...
    'FontSize',14,...
    'Position',[0.410797101449275 0.76725806451613 0.281159022865167 0.210292955892033],...
    'XTickLabel',{},...
    'YTickLabel',{});
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes2,[-1.5 3]);
box(axes2,'on');
hold(axes2,'on');

% Create plot
plot(X1,Y2,'Parent',axes2);

% Create line
line(XData1,YData1,'Parent',axes2,'LineWidth',0.01,'LineStyle',':');

% Create line
line(XData2,YData1,'Parent',axes2,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create line
line(XData3,YData1,'Parent',axes2,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create axes
axes3 = axes('Parent',figure1,'YTick',[0 0.25 0.5 0.75],'XTick',[-1 0 1 2],...
    'FontSize',14,...
    'Position',[0.691594202898551 0.76725806451613 0.268301630434783 0.210292955892033],...
    'XTickLabel',{},...
    'YTickLabel',{});
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes3,[-1.5 3]);
box(axes3,'on');
hold(axes3,'on');

% Create plot
plot(X1,Y3,'Parent',axes3);

% Create line
line(XData1,YData1,'Parent',axes3,'LineWidth',0.01,'LineStyle',':');

% Create line
line(XData2,YData1,'Parent',axes3,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create line
line(XData3,YData1,'Parent',axes3,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create axes
axes4 = axes('Parent',figure1,'YTick',[0 0.25 0.5 0.75],'XTick',[-1 0 1 2],...
    'FontSize',14,...
    'Position',[0.13 0.548172043010753 0.280416666666667 0.218154487601492],...
    'XTickLabel',{});
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes4,[-1.5 3]);
box(axes4,'on');
hold(axes4,'on');

% Create plot
plot(X1,Y4,'Parent',axes4);

% Create line
line(XData1,YData1,'Parent',axes4,'LineWidth',0.01,'LineStyle',':');

% Create line
line(XData2,YData1,'Parent',axes4,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create line
line(XData3,YData1,'Parent',axes4,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create ylabel
ylabel({'flux'},'HorizontalAlignment','center','FontSize',15.4,...
    'Interpreter','latex');

% Create axes
axes5 = axes('Parent',figure1,'YTick',[0 0.25 0.5 0.75],'XTick',[-1 0 1 2],...
    'FontSize',14,...
    'Position',[0.410797101449275 0.548172043010753 0.281390398550725 0.218154487601492],...
    'XTickLabel',{},...
    'YTickLabel',{});
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes5,[-1.5 3]);
box(axes5,'on');
hold(axes5,'on');

% Create plot
plot(X1,Y5,'Parent',axes5);

% Create line
line(XData1,YData1,'Parent',axes5,'LineWidth',0.01,'LineStyle',':');

% Create line
line(XData2,YData1,'Parent',axes5,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create line
line(XData3,YData1,'Parent',axes5,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create axes
axes6 = axes('Parent',figure1,'YTick',[0 0.25 0.5 0.75],'XTick',[-1 0 1 2],...
    'FontSize',14,...
    'Position',[0.691594202898551 0.548172043010753 0.268301630434783 0.218154487601492],...
    'XTickLabel',{},...
    'YTickLabel',{});
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes6,[-1.5 3]);
box(axes6,'on');
hold(axes6,'on');

% Create plot
plot(X1,Y6,'Parent',axes6);

% Create line
line(XData1,YData1,'Parent',axes6,'LineWidth',0.01,'LineStyle',':');

% Create line
line(XData2,YData1,'Parent',axes6,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create line
line(XData3,YData1,'Parent',axes6,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create axes
axes7 = axes('Parent',figure1,'YTick',[0 0.25 0.5 0.75],'XTick',[-1 0 1 2],...
    'FontSize',14,...
    'Position',[0.13 0.329086021505376 0.280416666666667 0.217852754004828],...
    'XTickLabel',{});
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes7,[-1.5 3]);
box(axes7,'on');
hold(axes7,'on');

% Create plot
plot(X1,Y7,'Parent',axes7);

% Create line
line(XData1,YData1,'Parent',axes7,'LineWidth',0.01,'LineStyle',':');

% Create line
line(XData2,YData1,'Parent',axes7,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create line
line(XData3,YData1,'Parent',axes7,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create axes
axes8 = axes('Parent',figure1,'YTick',[0 0.25 0.5 0.75],'XTick',[-1 0 1 2],...
    'FontSize',14,...
    'Position',[0.410797101449275 0.329086021505376 0.281390398550725 0.217852754004828],...
    'XTickLabel',{},...
    'YTickLabel',{});
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes8,[-1.5 3]);
box(axes8,'on');
hold(axes8,'on');

% Create plot
plot(X1,Y8,'Parent',axes8);

% Create line
line(XData1,YData1,'Parent',axes8,'LineWidth',0.01,'LineStyle',':');

% Create line
line(XData2,YData1,'Parent',axes8,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create line
line(XData3,YData1,'Parent',axes8,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create axes
axes9 = axes('Parent',figure1,'YTick',[0 0.25 0.5 0.75],'XTick',[-1 0 1 2],...
    'FontSize',14,...
    'Position',[0.691594202898551 0.329086021505376 0.268301630434783 0.217852754004828],...
    'XTickLabel',{},...
    'YTickLabel',{});
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes9,[-1.5 3]);
box(axes9,'on');
hold(axes9,'on');

% Create plot
plot(X1,Y9,'Parent',axes9);

% Create line
line(XData1,YData1,'Parent',axes9,'LineWidth',0.01,'LineStyle',':');

% Create line
line(XData2,YData1,'Parent',axes9,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create line
line(XData3,YData1,'Parent',axes9,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create axes
axes10 = axes('Parent',figure1,'YTick',[0 0.25 0.5 0.75],'XTick',[-1 0 1 2],...
    'FontSize',14,...
    'Position',[0.13 0.11 0.280416666666667 0.219591836734694]);
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes10,[-1.5 3]);
box(axes10,'on');
hold(axes10,'on');

% Create plot
plot(X1,Y10,'Parent',axes10);

% Create line
line(XData1,YData1,'Parent',axes10,'LineWidth',0.01,'LineStyle',':');

% Create line
line(XData2,YData1,'Parent',axes10,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create line
line(XData3,YData1,'Parent',axes10,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create axes
axes11 = axes('Parent',figure1,'YTick',[0 0.25 0.5 0.75],'XTick',[-1 0 1 2],...
    'FontSize',14,...
    'Position',[0.410797101449275 0.11 0.281390398550725 0.219591836734694],...
    'YTickLabel',{});
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes11,[-1.5 3]);
box(axes11,'on');
hold(axes11,'on');

% Create plot
plot(X1,Y11,'Parent',axes11);

% Create line
line(XData1,YData1,'Parent',axes11,'LineWidth',0.01,'LineStyle',':');

% Create line
line(XData2,YData1,'Parent',axes11,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create line
line(XData3,YData1,'Parent',axes11,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create xlabel
xlabel({'velocity'},'HorizontalAlignment','center','FontSize',15.4,...
    'Interpreter','latex');

% Create ylabel
ylabel({''},'HorizontalAlignment','center','FontSize',15.4);

% Create axes
axes12 = axes('Parent',figure1,'YTick',[0 0.25 0.5 0.75],'XTick',[-1 0 1 2],...
    'FontSize',14,...
    'Position',[0.691594202898551 0.11 0.268301630434783 0.219591836734694],...
    'YTickLabel',{});
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes12,[-1.5 3]);
box(axes12,'on');
hold(axes12,'on');

% Create plot
plot(X1,Y12,'Parent',axes12);

% Create line
line(XData1,YData1,'Parent',axes12,'LineWidth',0.01,'LineStyle',':');

% Create line
line(XData2,YData1,'Parent',axes12,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create line
line(XData3,YData1,'Parent',axes12,'LineWidth',0.01,'LineStyle',':',...
    'Color',[1 0 0]);

% Create textbox
annotation(figure1,'textbox',...
    [0.344947631017672 0.951002227171491 0.0645587675198049 0.0215444752511312],...
    'String','$\omega = 0.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.346736707800122 0.923162583518929 0.0691682282145034 0.0289582291714053],...
    'String','$\tau=0.5$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.625273080438757 0.948775055679285 0.0602845063985374 0.0235852915776613],...
    'String','$\omega = 0.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.895795246800731 0.953229398663696 0.401108127666057 0.0190377710104126],...
    'String','$\omega = 0.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.62666891377209 0.930430434980228 0.062544980195003 0.0212244897959255],...
    'String','$\tau=1.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.897623400365631 0.91870824053452 0.399634140767824 0.0327603290759536],...
    'String','$\tau=2.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.343640310786106 0.737193763919821 0.0603816270566727 0.0227353302122686],...
    'String','$\omega = 0.3$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.62579391377209 0.745643379846369 0.0606777498476538 0.0142857142857179],...
    'String','$\omega = 0.3$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.895515310786106 0.735159765465205 0.400729166666666 0.0244897959183706],...
    'String','$\omega = 0.3$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.897512720901888 0.70935412026726 0.0567834399756253 0.0286627880550895],...
    'String','$\tau=2.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.344554387568556 0.514476614699332 0.0676942413162708 0.0251374937502887],...
    'String','$\omega = 0.7$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.345429387568556 0.70935412026726 0.0567643967093236 0.0276423798918268],...
    'String','$\tau=0.5$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.627062157221206 0.717999181855369 0.0594095063985376 0.0204081632653058],...
    'String','$\tau=1.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.345429387568556 0.49109131403118 0.0585925502742231 0.0279105495204792],...
    'String','$\tau=0.5$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.628408554235222 0.528953229398663 0.0708601843388179 0.0103813463024441],...
    'String','$\omega = 0.7$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.630197631017672 0.502879414572064 0.0608444165143206 0.0171428571428607],...
    'String','$\tau=1.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.897623400365631 0.518930957683742 0.400970063985374 0.0204967956002025],...
    'String','$\omega = 0.7$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.899468464351005 0.448908685968821 0.400000000000001 0.0700000000000007],...
    'String','$\tau=2.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.344947631017672 0.299554565701559 0.0700432282145035 0.0225262488068745],...
    'String','$\omega = 1.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.346736707800122 0.276169265033407 0.0563711532602074 0.0263197127403316],...
    'String','$\tau=0.5$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.626580400670323 0.290645879732739 0.0653757236441194 0.0323621653561216],...
    'String','$\omega = 1.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.628369477452773 0.271714922048997 0.0517036486898234 0.0317012863051688],...
    'String','$\tau=1.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.897640310786105 0.231375392027638 0.400000000000001 0.07],...
    'String','$\tau=2.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.895795246800731 0.308463251670379 0.400055987202925 0.0155652015817483],...
    'String','$\omega = 1.0$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',16,...
    'FitBoxToText','off');

