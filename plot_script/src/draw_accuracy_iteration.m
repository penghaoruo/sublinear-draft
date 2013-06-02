clc, clear
%dataset = '2d';
%dataset = '20NewsGroup';
%dataset = 'Gisette';
%dataset = 'ECUESpam';
dataset = 'URL-Reputation';
mat = [dataset,'_accuracy_iteration.mat'];
load(mat);
%if STRCMP(dataset,'URL-Reputation')
    x=[10 20 30 40 50];
%end
figure; 
set(gcf,'Position',[100,100,1000,750], 'color','w');
LineWidth=3;
MarkerSize=8;
plot(x,a,'-ok','LineWidth',LineWidth,'MarkerSize',MarkerSize);
hold on;
plot(x,b,'--xb','LineWidth',LineWidth,'MarkerSize',MarkerSize);
hold on;
plot(x,c,'-vr','LineWidth',LineWidth,'MarkerSize',MarkerSize);
hold on;
plot(x,d,'-.^g','LineWidth',LineWidth,'MarkerSize',MarkerSize);
hold on;
plot(x,e,'-*y','LineWidth',LineWidth,'MarkerSize',MarkerSize);
hold on;
plot(x,f,'-+c','LineWidth',LineWidth,'MarkerSize',MarkerSize);
hold on;
xlabel('Iteration Number','Fontsize',25,'fontweight','b');
ylabel('Test Error','Fontsize',25,'fontweight','b');
set(gca,'fontsize',25,'fontweight','b');
%axis([10 50 0 0.3]);
legend('Mahout','Liblinear','SLLR','PSUBPLR-MR','PGDPLR-SPARK','PSUBPLR-SPARK');