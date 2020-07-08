%% Is There correlation between number of tests to the 
% number of deaths in Canada?

%get data
d_canada=dataa_d_c()
t_canada=dataa_t_c()
length(t_canada)
length(d_canada)
d_canada=(d_canada.')
t_canada=(t_canada.')

% insert death=0 in mached cells
d_canada_f(1:49)=0
d_canada_f(50:100)=d_canada(1:51)
length(d_canada_f)
length(t_canada)

%linear regression
b1 = d_canada_f/t_canada
yCalc1 = b1*t_canada;

%correlation coefficiant
R = corrcoef(d_canada_f,t_canada)
R

%Plot results
plot(t_canada,yCalc1,'-r','LineWidth',3)
hold on
scatter(t_canada,d_canada_f)
txt = strcat(' Correlation with coef of: ',num2str(R(1,2)));
text(1500,165,txt)

title('Canada: Number of Tests vs. Number of Deaths')
xlabel('Number of tests')
ylabel('Nunber of deaths')
legend('Linear regression','Data','Location','NorthWest')




%%
%%conclusions:
% 1) there is direct correlation between number of deaths to number of tests
%     the correlation is: 0.9007 
% 2) Because of the direct correlation we could describe the results 
%   with linear reggression.



function y=dataa_t_c
    y=[9.708750267 %31/01/20
9.708750267
19.41750053
29.1262508
38.83500107
48.54375134
58.2525016
67.96125187
77.67000214
87.3787524
97.08750267
106.7962529
116.5050032
126.2137535
135.9225037
145.631254
155.3400043
165.0487545
174.7575048
184.4662551
194.1750053
203.8837556
213.5925059
223.3012561
233.0100064
242.7187567
252.4275069
262.1362572
271.8450075
281.5537577
291.262508
312.0912587
332.9200094
353.7487601
374.5775108
663.5085634
952.4396159
1241.370668
1909.117171
2576.863674
3244.610177
3912.356679
4737.979184
5563.601688
6389.224192
7214.846697
8040.469201
8866.091705
9691.714209
10358.86729
11026.02038
11693.17346
12360.32654
13027.47963
13694.63271
14361.7858
14250.38783
14138.98987
14027.59191
13916.19394
13804.79598
13693.39802
13582.00005
13261.57148
12941.14291
12620.71433
12300.28576
11979.85719
11659.42862
11339.00004
12030.07144
12721.14285
13412.21425
14103.28565
14794.35705
15485.42845
16176.49986
17189.70051
18202.90117
19216.10182
20229.30248
21242.50313
22255.70379
23268.90444
23477.99969
23687.09494
23896.19019
24105.28544
24314.38069
24523.47594
24732.57119
25032.5848
25332.59841
25632.61202
25932.62563
26232.63924
26532.65284
26851.90455
26851.90455
26851.90455 %09/05/2020

]       
end 


function y=dataa_d_c
    y=[
1 % 20/03/20
3
4
6
7
7
6
7
9
10
13
15
20
26
31
37
44
49
54.001
59
63
68
73
80.999
89
99
110.001
120.999
128.001
133.999
135
138.001
140
141.998
143
146
146
146
148
150.999
155
159.001
163.999
168
169
171.001
174.001
178.999
181
185
185 %09/05/20

]
        
 end 