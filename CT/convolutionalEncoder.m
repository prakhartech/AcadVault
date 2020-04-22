clearvars; clc; clear;
r = 1/2;
n = 3; %length of information string
p = 0.5; %Bernouli random variable probability

%encoder

message = randi([0,1],1,n);
resistor = 2;
fix_zeros=[0,0];

o = length(message);

message2= horzcat(message,fix_zeros);  

resistor1=0; resistor2=0;   

rec_out=[];   

l=length(message2);

for i=1:1:l

resistor1(i+1)=message2(i);
resistor2(i+1)=resistor1(i);
out1(i)= mod(resistor1(i)+resistor2(i)+message2(i),2);  
out2(i)= mod(message2(i)+resistor2(i),2); 
rec_out=[rec_out out1(i) out2(i)];

end
encoded_code = rec_out;
