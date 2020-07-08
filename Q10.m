% Did the Champions League games affect the proportion of deaths and cases?
% and the proportion of recovers and cases?
% Is the proportion of deaths and recovers compiatible with the countries?


%07/03/20-30/04/20 per weeks comulative:
%Spain deaths, recovers, cases
d_s=[0, 292, 1672, 6217, 11834,16505,20453,22902,24824]
r_s=[0, 556, 2672, 13219, 33701, 57026, 78893, 95708, 114678]
cases_s=[1080, 9722, 36557, 90159, 138587, 171981, 202693, 225820, 243991]

%Canada deaths, recovers, cases
d_c=[0, 1, 18, 61, 233, 653, 1470, 2302, 3184]
r_c=[0, 0, 0, 476, 2735, 6650, 11206, 15541, 21424]
cases_c=[60, 257, 1331, 5655, 14018, 23318, 33383, 43888, 53236] 



x={'07/03','14/03','21/03','28/03','04/04','11/04','18/04','24/04','30/04'}
%percentage of recovers from cases and deaths from cases
per_rec= (r_s./cases_s)*100
per_dea= (d_s./cases_s)*100

ratio_s= (per_dea./per_rec)*100

per_rec_c= (r_c./cases_c)*100
per_dea_c= (d_c./cases_c)*100
ratio_c= (per_dea_c./per_rec_c)*100

figure

subplot(2,1,1)
plot(per_rec,'LineWidth',2)
hold on
plot(per_dea,'LineWidth',2)

plot(per_rec_c,'--b','LineWidth',2)
plot(per_dea_c,'--r','LineWidth',2)


ytickformat('%g%%');
set(gca,'xticklabel',x.')
txt_s = '\leftarrow Champions League Match: Atalanta vs. Valecia and Liverpool vs. At Madrid';
            text(1.5,1.5,txt_s)

xlabel('Date')
ylabel('Percentage')
title('Deaths and Recovery Percentage from Cases')
legend('Spain: Recovery','Spain: Deaths','Canada: Recovery','Canada: Deaths','Location','NorthWest')
subplot(2,1,2)
plot(ratio_s,'-k','LineWidth',1.5)
hold on
plot(ratio_c,'--k','LineWidth',1.5)
ytickformat('%g%%');
set(gca,'xticklabel',x.')


xlabel('Date')
ylabel('Percentage')
title('Figure 1: Proportion Between Deaths and Recovers')
legend('Spain','Canada')
hold off

%%Conclusions:
% 1) It seems that in Spain, the Champions League games affected the ratio
% of the deaths, recovers and cases in general that was higher than Canada.
% It make sense because it's similar to what we heard in the media and
% because of the fact that a lot of fans reached to Spain from different
% countries in one crowded stadium.
% 2) Once we started analyzing the data, we noticed that the ratio of dead
% and recovering between the countries would look similar on the graph.
%   We decided to check this ratio and found that the ratio of the
%   countries converges to about 20%. In other words, there is one dead
%   person for every 5 recovers.


figure
scatter3(d_s,r_s,cases_s,'filled','MarkerEdgeColor','k')
hold on
scatter3(d_c,r_c,cases_c,'filled','MarkerEdgeColor','k')
xlabel('Deaths')
ylabel('Recoveries')
zlabel('Cases')
title('Figure 2: 3D Scatter of: Cases,Deaths and Recovers')
legend('Spain','Canada')
