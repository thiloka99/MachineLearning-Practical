function [train,test] = scaleData(train,test)

% Scale data to range [-1,1].
% Test data is scaled at the same transformation as train data

[row,col] = size(train);
normalMax = 1;
normalMin = -1;

for i=1:(col-1)
    realMax = max(train(:,i));
    realMin = min(train(:,i));
    ration_scale = (normalMax-normalMin)/(realMax-realMin);
    train(:,i) = (ration_scale*(train(:,i)-realMin))+normalMin;
    test(:,i) = (ration_scale*(test(:,i)-realMin))+normalMin;
end
    