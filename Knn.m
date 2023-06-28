function rate = Knn(traindata,testdata)

% This script is used for 1-NN Classification
m = size(traindata,1);
n = size(testdata,1);
predict = [];

for test = 1:n %for each testing data
    for train = 1:m %for each training data
        Euclidist(train) = norm(testdata(test,1:end-1) - traindata(train,1:end-1));
    end
    
    % >>> KNN ---> sort Euclidist ---> select,K distances ----> find mode ----> ind
    
    [val,ind] = min(Euclidist);
    predict(test) = traindata(ind,end);
end

actual = testdata(:,end);
rate = 100*sum(actual == predict')/n;