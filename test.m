X = load('iris.txt');
accuracy = OVASVMs(X,3);
disp(accuracy);