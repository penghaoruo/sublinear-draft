clc, clear
dataset = 'all';
mat = [dataset,'_time.mat'];
load(mat);
figure; 
set(gcf,'Position',[10,10,2000,1000], 'color','w');
b=bar(y);
grid on;
ch = get(b,'children');
set(gca,'XTickLabel',{'2d','20NewsGroup','Gisette','ECUESpam','URL-Reputation'})
xlabel('Algorithms','Fontsize',25,'fontweight','b');
ylabel('Running Time/s','Fontsize',25,'fontweight','b');
set(gca,'fontsize',25,'fontweight','b');
legend('Mahout','Liblinear','SLLR','PSUBPLR-MR','PGDPLR-SPARK','PSUBPLR-SPARK');