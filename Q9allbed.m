%% What is the percentage of beds capacity for ICU (Intensive Care Unit) beds in each country?
% when the goverment decided to restrict any gathering in this timeline?

any_gathering_restrict_start_date_spain='14/03/2020'
any_gathering_restrict_start_date_canada='23/03/2020'
icu_bed_s=icu_data_s().'
icu_bed_c=icu_data_c().'
all_icu_bed_c=4438
all_icu_bed_s=4043
per_icu_bed_s=round((icu_bed_s/all_icu_bed_s)*100,2)
per_icu_bed_c=round((icu_bed_c/all_icu_bed_c)*100,2)

index_gath_c=9
val_gath_c=per_icu_bed_c(index_gath_c)

index_gath_s=21
val_gath_s=per_icu_bed_s(index_gath_s)

m_c=max(per_icu_bed_c)
index_m_c=find(per_icu_bed_c==max(per_icu_bed_c))

m_s=max(per_icu_bed_s)
index_m_s=find(per_icu_bed_s==max(per_icu_bed_s))

x_s=linspace(1,length(icu_bed_s),length(icu_bed_s));
x_c=linspace(1,length(icu_bed_c),length(icu_bed_c));
plot(x_s,per_icu_bed_s,'-g',x_c,per_icu_bed_c,'-r','LineWidth',2)

legend('Spain','Canada')

txt_c = '\leftarrow Start date of any gathering restrict';
            text(index_gath_c,val_gath_c,txt_c)
            
txt_s = '\leftarrow Start date of any gathering restrict';
            text(index_gath_s,val_gath_s,txt_s)
txt_m_c = '\leftarrow max';
            text(index_m_c,m_c,txt_m_c)
            
txt_m_s = '\leftarrow max';
            text(index_m_s,m_s,txt_m_s) 


xlabel('Days since first ICU bed occupied')
ylabel('Percentage')
title('Capacity Percentage of ICU Beds') 
ytickformat('%g%%');

max(per_icu_bed_c)
max(per_icu_bed_s)

%%conclusions
%1) Easy to see that spain restricted any gathering later and maybe this
%   is the reason why the capacity of ICU beds and cases was so high in Spain.
%2) The capacity in spain got up to 175%(!) may couse the high ammount of
  % deaths cases in Spain in compare to Canada which had max of 38% ICU
  % bed capacity



function y=icu_data_c
y=[
1   %15/03/20
4
8
14.2836
22.14770714
30.29527698
37.03564405
43.00593571
49.97104563
55.66883175
63.64253333
74.1821623
91.01466905
113.7241258
139.9515175
172.6578325
210.8010972
252.6638135
296.0903536
339.9022357
384.0507837
428.4909647
472.5914409
520.5525167
572.4542984
630.2184798
696.655254
770.8668044
848.4602968
925.5392806
997.0391813
1061.706286
1117.168573
1162.28654
1201.049361
1236.076721
1269.092567
1298.319709
1327.07342
1354.478759
1382.703628
1409.573419
1438.80049
1470.633102
1500.943429
1529.440646
1557.885066
1586.725965
1612.461384
1639.132273
1665.585725
1684.440163
1698.347237
1703.10329
1699.151711
1684.309229

 %09/05/20
]
end





function y=icu_data_s
y=[
7%  3/3/2020
14
27
52.79058403
91.63198319
145.8714496
212.8617773
303.2574535
418.1554354
555.3772361
720.6794104
926.8316023
1178.100918
1481.519345
1843.962923
2264.802097
2736.788649
3245.015091
3775.21464
4305.307571
4812.801661
5283.817372
5708.616263
6086.317165
6404.439553
6663.939843
6859.899777
6994.495327
7068.576613
7086.043296
7056.613286
6987.996706
6892.394362
6774.439951
6639.010992
6491.665489
6338.982472
6187.488269
6039.758063
5887.774272
5728.674218
5557.999006
5366.906266
5162.483709
4947.505895
4732.515566
4520.944113
4318.575403
4130.786722
3950.671154
3773.309806
3594.903829
3424.504625
3254.347684
3081.228787
2908.832843
2748.691379
2598.375427
2464.7059
2354.645855
2264.511118
2192.942168
2127.031599
2062.229263
1995.779366
1908.742317
1818.990206
1722.78052
 %09/05/20
]
end
