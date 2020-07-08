%% How does the goverment lockdown decision in Canada
%% affected the number of infected persons?
%%  And which mathematic polynom will preform it better?



infactions=dataa()
y=(infactions).'
x=linspace(1,length(y),length(y));

% Make comulative infected
for i=2:length(y)
    y(i)=y(i-1)+y(i)
end
% fit 3 polynoms (degrees:1,2,3)
       p1 = polyfit(x,y,1);
       p2 = polyfit(x,y,2);
       p3 = polyfit(x,y,3);
       
        f1 = polyval(p1,x);
        f2 = polyval(p2,x);
        f3 = polyval(p3,x);
num_inf_when_edu_close=7616.172799
index_edu=find(infactions==num_inf_when_edu_close)

errors=[round(sqrt(sum((y-f1).^2)),2)
                round(sqrt(sum((y-f2).^2)),2)
                round(sqrt(sum((y-f3).^2)),2)
                ]
            plot(x,y,'o',x,f1,'-b',x,f2,'--k')
            hold on
            plot(x,f3,'-r','LineWidth',3)
            %plot(index_edu,y(index_edu),'o','MarkerSize', 10)
            hold off
            txt = '\leftarrow Start date for Educational facilities closed';
            text(index_edu,y(index_edu),txt)
        leg1=legend('data',strcat('1st; error=',num2str(errors(1))),strcat('2nd; error=',num2str(errors(2))),strcat('3rd; error=',num2str(errors(3))),'Location','NorthWest')
title(strcat('comulative infactions in Canada  [',num2str(p3(1)),'X^3+',num2str(p3(2)),'X^2+',num2str(p3(3)),'X+',num2str(p3(4)),']'))
    xlabel('Days since covid-19 started in Canada: 10/02/20-09/05/20')
    ylabel('Cumulative Num of deaths')
    
    
    
    %% Conclusions in the next page "Q2infectcumo"
    
    
    
    
    function y=dataa
    y=[2.178448911 % 10/02/2020
2.163981808
2.271129894
2.263924397
2.112807034
0
0
2.014050851
1.973305774
2.112709891
2.108609789
1.988364983
0.132224163
0.438322265
1.221428088
3.002930221
6.822119153
14.87811363
31.82440089
66.4025237
130.7217191
232.6558786
364.7031035
504.4311105
628.5910733
724.2993327
793.1309385
853.5107427
934.7795627
1063.339832
1256.258242
1525.428291
1881.338246
2330.643126
2869.435972
3478.211264
4123.913509
4769.4801
5385.611159
5959.794418
6500.681638
7037.844293
7616.172799
8284.857593
9081.675855
10015.08047
11050.05229
12107.77144
13086.60676
13898.90724
14504.71007
14922.17447
15209.19899
15428.12494
15616.62151
15782.96307
15926.02156
16060.29894
16223.41154
16458.83706
16787.25966
17188.62978
17608.57359
17984.58967
18274.16152
18469.01575
18593.30223
18694.80092
18838.57065
19104.18848
19392.05506
19563.96326
19610.04032
19528.01287
19177.43983
18675.98943
18147.89906
17573.02495
16899.73188
16142.95506
15357.48851
14687.07627
14106.81843
13524.62386
13464.0502
13376.21621
12923.75114
12891.87218
12870.26348
12398.36037 %09/05/2020

]
        
 end 