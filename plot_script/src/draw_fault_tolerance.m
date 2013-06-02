clc, clear
mat = 'fault_tolerance.mat';
load(mat);
figure; 
set(gcf,'Position',[10,10,2000,1000], 'color','w');
y=y*4;
b=bar(y);
grid on;
set(gca,'XTickLabel',{'PSUBPLR-MR','PGDPLR-SPARK','PSUBPLR-SPARK'})
xlabel('Number of Failed Maps','Fontsize',25,'fontweight','b');
ylabel('Iteration Time(after failures)/s','Fontsize',25,'fontweight','b');
set(gca,'fontsize',25,'fontweight','b');
legend('1%','5%','10%','15%','30%');