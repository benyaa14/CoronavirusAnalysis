%% What is the deaths distribution of the virus by age and gender?
s_X = categorical({'0-9','10-19','20-29','30-39','40-49','50-59','60-69','70-79','80-89','90+'});
s_X = reordercats(s_X,{'0-9','10-19','20-29','30-39','40-49','50-59','60-69','70-79','80-89','90+'});

subplot(1,2,1)
s_vals = [1 1;2 3;14 8;35 22;113 70;405 161;1079 439;2908 1352;3997 3089;1386 2093];
b1 = bar(s_X,s_vals);
legend('Male','Female','Location','NorthWest')
title('Spain: deaths by age (gender)')
xlabel('Age group')
ylabel('Deaths')

c_X = categorical({'0-19','20-39','40-59','60-79','80+'});
c_X = reordercats(c_X,{'0-19','20-39','40-59','60-79','80+'});

c_vals = [0 ;12 ;76 ;482 ;1294 ]
subplot(1,2,2)
b2 = bar(c_X,c_vals);
title('Canada: deaths by age')
xlabel('Age group')
ylabel('Deaths')

%% conclusions
% 1) It can be seen that most people affected by the disease are older
% people. In 2 cases (Canada and Spain) The distribution has a left tail.
% 2) In most groups in Spain, most of the deaths seem to be men.

