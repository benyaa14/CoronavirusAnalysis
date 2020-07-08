%%What is the percentage of deaths per cases for each age group?
figure
subplot(1,2,1)
s_X = categorical({'0-19','20-39','40-59','60-79','80+'});
s_X = reordercats(s_X,{'0-19','20-39','40-59','60-79','80+'});
s_X2=[1,2,3,4,5,6,7,8,9,10]
s_deaths = [2+5;23+63;201+611;1695+4632;7872+4082];
s_cases  = [877+1637;13461+22639;35135+42794;34360+32443;37463+18316]
s_percent =round((s_deaths./s_cases).*100,2).'
b1 = bar(s_X,s_percent,'y');

title('Spain: percentage of deaths per cases by age ')
xlabel('Age group')
ylabel('Percent')
ytickformat('%g%%');
text(1:length(s_percent),s_percent,strcat(num2str(s_percent'),'%'),'vert','bottom','horiz','center'); 
box off


subplot(1,2,2)
c_X = categorical({'0-19','20-39','40-59','60-79','80+'});
c_X = reordercats(c_X,{'0-19','20-39','40-59','60-79','80+'});

c_deaths = [0 ;12 ;76 ;482 ;1294]
c_cases  = [2177;10619;12715;7722;6223]
c_percent =round((c_deaths./c_cases).*100,2).'
b2 = bar(c_X,c_percent,'r');
title('Canada: percentage of deaths per cases by age ')
xlabel('Age group')
ylabel('Percent')
ytickformat('%g%%');
text(1:length(c_percent),c_percent,strcat(num2str(c_percent'),'%'),'vert','bottom','horiz','center'); 
box off

figure
diff=abs(c_percent-s_percent)
b3 = bar(c_X,diff,'r');
title('Table 2: difrrence between Canada and Spain ')
xlabel('Age group')
ylabel('Percent of difference')
ytickformat('%g%%');
text(1:length(diff),diff,strcat(num2str(diff'),'%'),'vert','bottom','horiz','center'); 
box off

%% conclusions:
%1) The distribution has a left tail - we can learn from this that
%   the percentage of dead cases increases as the age increases.

%2) From both countries there are similar percentages between
%   the number of cases of group and the deaths of group, you can understand that there
%   is a connection between the age categories no matter the area of
%   residence. As we Can see in table 2 the highest diffrence is 3.23% 



 
