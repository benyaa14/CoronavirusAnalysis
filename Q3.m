%Spain vs. Canada deaths comulative per million persons
% Does Spain really had such a big pandemic like we told in the media?
%Or in relation to the poplulation, it wasnt so bad?

%get data
d_spain=dataa_s()
d_canada=dataa_c()
d_spain=d_spain.'
d_canada=d_canada.'


%Calculate to get information
d_spain=cumArr(d_spain)
d_spain=perMil(d_spain,46720000)
d_canada=cumArr(d_canada)
d_canada=perMil(d_canada,37060000)
len_min=min(length(d_canada),length(d_spain))
   
%Get difference values    
d_diff=d_spain(1:len_min)-d_canada(1:len_min)
 


%Plot
x_spain=linspace(1,length(d_spain),length(d_spain))
x_canada=linspace(1,length(d_canada),length(d_canada))
x_diff=linspace(1,len_min,len_min)
plot(x_spain,d_spain,'-g',x_diff,d_diff,'--b',x_canada,d_canada,'-r','LineWidth',1.5)
hold on
comet(x_diff,d_diff)
hold off

leg1=legend('Spain','Differece','Canada','Location','NorthWest')
title('Comulative Deaths per 1,000,000 People')
xlabel('Days since first death')
ylabel('Number of deaths')
function arr= cumArr(arr)
   for i=2:length(arr)
        arr(i)=(arr(i-1)+arr(i))
    
   end
end

function arr= perMil(arr,pop)
    for i=1:length(arr)
        arr(i)=((arr(i)/pop)*1000000)
    end
end


%% We can learn that spain really had more deaths than Canada even for deaths
%%  per 1 milion people.
%   The blue dashed line shows the difference between the countries. Since
%   first death, as time passed the difference gets bigger.

      function y=dataa_s
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
 
  function y=dataa_c
    y=[
1
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
185

]
        
 end 
    