data = load('C:\Users\cscuser\Documents\New folder\UCIdata\iris.txt');
[train,test] = splitData(data);
[train,test] = scaleData(train,test);
rate = nn(train,test);
disp(rate);


%data = load('C:\Users\cscuser\Documents\New folder\UCIdata\iris.txt');
%[train,test] = splitData(data);
%[train,test] = scaleData(train,test);
%rate = nn(train,test);
%disp(rate);
  
% 93.3333
