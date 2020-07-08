%% How does the goverment lockdown decision in Spain
%% effected the number of estimated infected persons?
%%  And which mathematic polynom will preform it better?

y=dataa()
y=(y).'
x=linspace(1,length(y),length(y))

num_inf_when_edu_close=77185.75003
index_edu=find(y==num_inf_when_edu_close)


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

        errors=[round(sqrt(sum((y-f1).^2)),2)
                round(sqrt(sum((y-f2).^2)),2)
                round(sqrt(sum((y-f3).^2)),2)
                ]
            plot(x,y,'o',x,f1,'-b',x,f2,'--k')
            hold on
            plot(x,f3,'-r','LineWidth',3)
            hold off
            txt = '\leftarrow Start date for Educational facilities closed';
            text(index_edu,y(index_edu),txt)
        leg1=legend('data',strcat('1st; error=',num2str(errors(1))),strcat('2nd; error=',num2str(errors(2))),strcat('3rd; error=',num2str(errors(3))),'Location','NorthWest')
title(strcat('comulative infactions in Spain  [',num2str(p3(1)),'X^3+',num2str(p3(2)),'X^2+',num2str(p3(3)),'X+',num2str(p3(4)),']'))
    xlabel('Days since covid-19 started in Spain 11/01/20-09/05/20')
    ylabel('Cumulative Num of deaths')
    
    %%
    %%We can learn that Spain locked their education facilities
    %%when they had almost 800,000 infected persons
    %% in compare to Canada that locked schools when they had 
    %% aproximatly 60,000 infected.
    % Probably goverment decision to shut down schools and other
    % institutes,
    % helped Canada reduce the number of virus casualties
    % We would recomend to close institutes early to be able control the
    % virus
    
    
    function y=dataa
    y=[1.828139606 %11/01/2020
1.805029053
1.941835201
1.93251926
1.793427028
0
0
0
0
1.71410201
1.731363085
1.886761178
1.90479642
1.803158718
0.135331826
0.108016917
0.075200248
0.045190088
0.023090829
0.009822791
25.28181446
25.0199274
26.97126834
26.96082038
25.03277683
0.217648089
0.17365186
0.121297694
0.077653044
0.068039765
0.14896113
0.455821491
1.284025954
3.249972208
7.688407226
17.71504312
40.94829573
126.2838988
263.2347517
535.1602338
998.8201644
1687.426659
2580.754712
3725.053785
5110.466414
6770.783259
8775.123066
11221.99939
14217.34638
17860.27904
22230.31309
27360.23287
33193.61878
39553.8194
46149.42556
52623.33159
58627.452
63897.69367
68295.39305
71795.81179
74432.2202
76231.90908
77185.75003
77274.39234
76531.49576
75091.51498
73177.86914
71031.36182
68826.09307
66633.96162
64462.68524
62330.57885
60311.05447
58506.70506
56972.467
55649.19615
54363.45916
52901.506
51113.053
48981.03016
46618.51338
44201.51769
41883.47249
39740.49407
37769.84707
35927.59097
34171.28507
32478.82022
30839.87754
29238.75287
27651.70266
26065.15783
24500.78187
23024.40802
21727.40508
20689.65906
19947.35473
19484.7331
19251.69352
19194.17593
19275.49516
19288.94291
18708.33989
17979.18214
17017.5318
15855.96942
14717.97013
14068.2294
13446.56756
12851.73195
12215.16908
11510.44363
10774.62649
9884.86333
9277.013568
9157.674846
8868.502898
8357.365541
8017.730821
7742.813417 %09/05/2020

]
        
 end 
 


    