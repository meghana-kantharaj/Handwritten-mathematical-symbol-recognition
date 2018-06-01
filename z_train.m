div=351;
gt=350;
lt=349;
minus=298;
mul=379;
plus=349;
s_cb=349;
s_ob=349;
my_train=[];
%C:\Users\megkanth\Documents
my_target=[];
for i=1:div
     p=imread(strcat(strcat('C:\Users\megkanth\Documents\MATLAB\div',int2str(i)),'.tif'));
    d=p(:);
    my_train=horzcat(my_train,d);
    my_target=horzcat(my_target,1);
    
end
for i=1:gt
    p=imread(strcat(strcat('C:\Users\megkanth\Documents\MATLAB\gt',int2str(i)),'.tif'));
   d=p(:);
    my_train=horzcat(my_train,d);
    my_target=horzcat(my_target,2);
end
for i=1:lt
    p=imread(strcat(strcat('C:\Users\megkanth\Documents\MATLAB\lt',int2str(i)),'.tif'));
   d=p(:);
    my_train=horzcat(my_train,d);
    my_target=horzcat(my_target,3);
end
for i=1:minus
    p=imread(strcat(strcat('C:\Users\megkanth\Documents\MATLAB\minus',int2str(i)),'.tif'));
d=p(:);
    my_train=horzcat(my_train,d);
    my_target=horzcat(my_target,4);
end
for i=1:mul
    p=imread(strcat(strcat('C:\Users\megkanth\Documents\MATLAB\mul',int2str(i)),'.tif'));
    d=p(:);
    my_train=horzcat(my_train,d);
    my_target=horzcat(my_target,5);
end
for i=1:plus
    p=imread(strcat(strcat('C:\Users\megkanth\Documents\MATLAB\plus',int2str(i)),'.tif'));
    d=p(:);
    my_train=horzcat(my_train,d);
    my_target=horzcat(my_target,6);
end
for i=1:s_cb
    p=imread(strcat(strcat('C:\Users\megkanth\Documents\MATLAB\s_cb',int2str(i)),'.tif'));
    d=p(:);
    my_train=horzcat(my_train,d);
    my_target=horzcat(my_target,7);
end
for i=1:s_ob
    p=imread(strcat(strcat('C:\Users\megkanth\Documents\MATLAB\s_ob',int2str(i)),'.tif'));
    d=p(:);
    my_train=horzcat(my_train,d);
    my_target=horzcat(my_target,8);
end

