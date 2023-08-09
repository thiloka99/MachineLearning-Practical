function Data = invertData(Data,class)

%This function is used to invert the +1 class and -1 classes

%*********************Interested Class *******************
indices = (Data(:,end) == class);
Data(indices,end) = 1;

%********************* Non-interested Class ***************
ind = ~indices;
Data(ind,end) = -1;

%***********************************************