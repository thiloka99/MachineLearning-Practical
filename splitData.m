function [trData,teData] = splitData(data)

[m,n] = size(data);

%Line 7 & 8 can be replaced as data = shuffleData(data);
%implement for shuffleData
indices = randperm(m);
data = data(indices,:);

trData = []; teData = [];

nTrain = round(m*0.7);
trData = data(1:nTrain,:);
teData = data(nTrain+1:m,:);