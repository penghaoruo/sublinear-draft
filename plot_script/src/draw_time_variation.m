clc, clear
%dataset = '2d';
%dataset = '20NewsGroup';
%dataset = 'Gisette';
%dataset = 'ECUESpam';
dataset = 'URL-Reputation';
mat = [dataset,'_time.mat'];
load(mat);
figure; 
set(gcf,'Position',[10,10,1800,900], 'color','w');
x=y(4:6,:);
x=x*4;
b=bar(x);
grid on;
set(gca,'XTickLabel',{'PSUBPLR-MR','PGDPLR-SPARK','PSUBPLR-SPARK'})
xlabel('Number of Nodes Used','Fontsize',25,'fontweight','b');
ylabel('Running Time per Iteration/s','Fontsize',25,'fontweight','b');
set(gca,'fontsize',18,'fontweight','b');
legend('1 node','2 nodes','3 nodes','4 nodes','5 nodes','6 nodes');