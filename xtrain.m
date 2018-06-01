

net = feedforwardnet(2500);
div=351;
divs=0;

gt=350;
gts=0;

lt=349;
lts=0;

minus=298;
minuss=0;

mul=379;
muls=0;

plus=349;
pluss=0;

s_cb=349;
s_cbs=0;

s_ob=349;
s_obs=0;

for i=1:300 
     p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\div',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    t=1;
    net = train(net,d,t);
end
for i=1:300
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\gt',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    t=2;
    %[x,t] = simplefit_dataset;
    net = train(net,d,t);
end
for i=1:300
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\lt',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    t=3;
    %[x,t] = simplefit_dataset;
    net = train(net,d,t);
end
for i=1:250
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\minus',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    t=4;
    %[x,t] = simplefit_dataset;
    net = train(net,d,t);
end
for i=1:300
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\mul',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    t=5;
    %[x,t] = simplefit_dataset;
    net = train(net,d,t);
end
for i=1:300
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\plus',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    t=6;
    %[x,t] = simplefit_dataset;
    net = train(net,d,t);
end
for i=1:300
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\s_cb',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    t=7;
    %[x,t] = simplefit_dataset;
    net = train(net,d,t);
end
for i=1:300
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\s_ob',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    t=8;
    %[x,t] = simplefit_dataset;
    net = train(net,d,t);
end


for i=301:div
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\div',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    output = sim(net,d);
    if( output==1)
        divs=divs+1;
    end
end
for i=301:gt
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\gt',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    output = sim(net,d);
    if( output==2)
        gts=gts+1;
    end
end
for i=301:lt
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\lt',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    output = sim(net,d);
    if( output==3)
        lts=lts+1;
    end
end
for i=301:minus
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\minus',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    output = sim(net,d);
    if( output==4)
        minuss=minuss+1;
    end
end
for i=301:mul
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\mul',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    output = sim(net,d);
    if( output==5)
        muls=muls+1;
    end
end
for i=301:plus
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\plus',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    output = sim(net,d);
    if( output==6)
        pluss=pluss+1;
    end
end
for i=301:s_cb
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\s_cb',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    output = sim(net,d);
    if( output==7)
        s_cbs=s_cbs+1;
    end
end
for i=301:s_ob
    p=imread(strcat(strcat('C:\Users\MegK\Documents\MATLAB\s_ob',int2str(i)),'.tif'));
    d=reshape(p,1,2500);
    output = sim(net,d);
    if( output==8)
        s_obs=s_obs+1;
    end
end


eff=divs/div+gts/gt+lts/lt+minuss/minus+muls/mul+pluss/plus+s_cbs/s_cb+s_obs/s_ob;
 
disp(eff);

