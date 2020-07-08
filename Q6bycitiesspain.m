%What is the distribution of deaths by areas in Spain and Canada?



c_all_deaths=5842
c_labels = {'Ontario','Quebec','rest of Canada'} 
c_X= [1919,3596]
c_rest= c_all_deaths - sum(c_X)
c_X(5)=c_rest

figure
subplot(1,3,1)
pie(c_X)

legend(c_labels,'Location','southoutside')
title('Canada Deaths')

%Spain

s_all_deaths=27709
s_labels = {'Madrid','Catalunia','Castilla y Leon','Castilla la Mancha','Basque','Andalusia','Valencian','Aragon','rest of Spain'};
s_X=[8863,5956,1953,2898,1466,1358,1370,838]
s_rest=s_all_deaths-sum(s_X)
s_X(9)=s_rest
s_X=s_X./s_all_deaths
s_X
subplot(1,3,3)
pie(s_X)

legend(s_labels,'Location','southoutside')
title('Spain Deaths')


w_labels={'Canada','Spain','Rest of the World'}
world_deaths=319000-s_all_deaths-c_all_deaths
w_X=[c_all_deaths,s_all_deaths,world_deaths]
subplot(1,3,2)
pie(w_X)

legend(w_labels,'Location','southoutside')
title('World Deaths')


%density:
%99/1kms -Spain
%3.78/1kms- Canada

density_relation=99/3.78

%% conclusions
% those interesting results have a lot of meaning:
%1) In Canada the amount of dead is divided into 2 main regions 
%   compared to Spain which spreads over the country. It is easy to
%   notice that it's harder to control the spread of the virus. It can be
%   a reason why Spain effected more then Canada

%2) The density in spain is 26 times bigger than Canada. From this calculated data we can assume that 
%   the spread of the virus in the country dependent the density.

%3) High-density countries are more likely to have a large number of dead
%   people


 









