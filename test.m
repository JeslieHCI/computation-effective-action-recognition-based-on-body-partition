clear
clc

load('timeaccuracy.mat')

[AX, H1, H2] = plotyy(1:4, timeaccuracy(1, :), 1:4, timeaccuracy(2, :), 'plot');
set(AX(1),'XColor','k','YColor','k');
set(AX(2),'XColor','k','YColor','k');

HH1=get(AX(1),'Ylabel');
set(HH1,'String','Recognition Rate');
set(HH1,'color','k');

HH2=get(AX(2),'Ylabel');
set(HH2,'String','Elapsed Time');
set(HH2,'color','k');

% set the ytick1 font size
set(AX(1), 'FontSize', 18);
set(AX(2), 'FontSize', 18);

% set the x axis tick
AX(1).XTick = [0.5 1 2 3 4 4.5];
AX(1).XLim = [0.5 4.5];
AX(2).XTick = [0.5 1 2 3 4 4.5];
AX(2).XLim = [0.5 4.5];

% set(H1,'LineStyle','-');
set(H1,'color','b');
% set(H2,'LineStyle',':');
set(H2,'color','r');

legend([H1,H2],{'Recognition Rate';'Elapsed Time'});
xlabel('Partition Scheme', 'FontSize', 18);
