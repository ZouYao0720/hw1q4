%%define the parameters
mu1 = 0;
sigma1 = 1;
mu2 = 0;
sigma2 = sqrt(1000);

%%%make the pdf
pdf1 = makedist('Normal','mu',mu1,'sigma',sigma1);
pdf2 = makedist('Normal','mu',mu2,'sigma',sigma2);

x = -10:0.01:10;
pdf1_normal = pdf(pdf1,x);
pdf2_normal = pdf(pdf2,x);
plot(x,pdf1_normal,x,pdf2_normal,'LineWidth',2)
xlabel('measurement x','FontSize',16) 
ylabel('pdf function','FontSize',16) 
legend({'x ~ N(0,1)','x ~ N(1,2)'},'Location','northeast')

proba1 = normcdf(x,mu1,sigma1);
proba2 = normcdf(x,mu2,sigma2);

figure(2)
plot(x,proba1,x,proba2,'LineWidth',2)
xlabel('measurement x','FontSize',16) 
ylabel('posterior probability','FontSize',16) 
legend({'P[L=1|x]','P[L=2|x]'},'Location','northeast')

