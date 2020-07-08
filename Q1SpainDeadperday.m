%We wanted to predict the amount of deaths from Corona virus
% for certain dates and we checked it out for what actually happened
% in Spain





%Fit a polynom to deaths number and predict
%Canada deaths data
y=dataa()
y=(y).'
%Split the data to 2 groups,
%to train the reggresion and later test
%test which polynom has the best prediction
y_train=y(1:round(length(y)*0.7))
y_test=y(round(length(y)*0.7)+1:length(y))
x_train=linspace(1,length(y_train),length(y_train));
x_test=linspace(length(y_train)+1,length(y),length(y)-length(y_train));




p1 = polyfit(x_train,y_train,1);
p2 = polyfit(x_train,y_train,2);
p3 = polyfit(x_train,y_train,3);
p4 = polyfit(x_train,y_train,4);
 
% Evaluate the fitted polynomial p  to the data and plot:

f1 = polyval(p1,x_train);
f2 = polyval(p2,x_train);
f3 = polyval(p3,x_train);
f4 = polyval(p4,x_train);

%show the errors for each polynom
errors=[round(sqrt(sum((y_train-f1).^2)),2)
round(sqrt(sum((y_train-f2).^2)),2)
round(sqrt(sum((y_train-f3).^2)),2)
round(sqrt(sum((y_train-f4).^2)),2)]      
        
subplot(1,2,1)
plot(x_train,y_train,'o',x_train,f1,'-b',x_train,f2,'--k',x_train,f3,'-g')
hold on

plot(x_train,f4,'--r','LineWidth',3)
comet(x_train,f4)

        
leg1=legend('data',strcat('1st; error=',num2str(errors(1))),strcat('2nd; error=',num2str(errors(2))),strcat('3rd; error=',num2str(errors(3))),strcat('4th; error=',num2str(errors(4))),'Location','NorthWest');      
title(strcat('Trained data best regrresion: [',num2str(p4(1)),'X^4+',num2str(p4(2)),'X^3+',num2str(p4(3)),'X^2+',num2str(p4(4)),'X+',num2str(p4(5)),']'))
xlabel('Days since covid-19 first death: 08/03/20 - 20/04/20')
ylabel('Num of deaths')

%which polynom is better to predict the deaths ?
f1_b = polyval(p1,x_test);
f2_b = polyval(p2,x_test);
f3_b = polyval(p3,x_test);
f4_b = polyval(p4,x_test);


%find the lower error
errors_b=[
round(sqrt(sum((y_test-f1_b).^2)),2)
round(sqrt(sum((y_test-f2_b).^2)),2)
round(sqrt(sum((y_test-f3_b).^2)),2)
round(sqrt(sum((y_test-f4_b).^2)),2)]
x=linspace(1,length(x_test),length(x_test))
a=find(errors_b==min(errors_b));
a

% generate reasonable polynom that do not
% have negative deaths values
f2_b_real=f2_b
for i = 1:length(f2_b)
   if f2_b(i)<0
       f2_b_real(i)=0
   end
   
end
errors_b(5)=round(sqrt(sum((y_test-f2_b_real).^2)),2)

%better prediction is 2nd degree polynom
subplot(1,2,2)

plot(x_test,y_test,'o',x_test,f2_b,'-b')

hold on
plot(x_test,f2_b_real,'--k','LineWidth',3)
comet(x_test,f2_b_real)
hold off

title(strcat('Spain best prediction: [',num2str(p2(1)),'X^2+',num2str(p2(2)),'X+',num2str(p2(2)),']'))

leg1=legend('data',strcat('2nd; error=',num2str(errors_b(2))),strcat('2nd real; error=',num2str(errors_b(5))),'Location','NorthEast');      

xlabel('Days since covid-19 first death: 21/04/20 - 09/05/20')
ylabel('Num of deaths')

%%Conclusions
%You can see that the forecast for 21/4-9/5 is predicted with a small
% error of 886 deaths for the entire period. Being able to predict
% low error can help the state prepare: hospital beds, hospitals, tests and more.


function y=dataa
    y=[7
7
13
24
37
51
68
88.002
115
144.001
180
227.999
282.999
346
420
492.998
566
632.006
692
738.996
776.997
801.999
820.996
835.002
835.998
827
807.005
782.999
758.003
735.999
713.998
690.997
668.001
644
623
607
595.001
585.009
574.001
553
527
499.998
468.003
445.996
424.002
405.996
384.001
364.999
345.999
331.998
312.003
294.001
280.001
264
244.001
228.998
218
209
207
211.001
208.001
208.001
196
    ]
        
 end 

        