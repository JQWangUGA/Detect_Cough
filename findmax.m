SE=ones(1,100);
z=open(d1',SE);

figure(1)
subplot(2,1,1)
plot(1/fs:1/fs:length(X1(1,:))/fs,z);
findpeaks(z,'minpeakheight',100);
subplot(2,2,2)
plot(1/fs:1/fs:length(X1(1,:))/fs,X1(1,:));

[pks,locs] =findpeaks(z,'minpeakheight',100);
[m,n]=size(peak);
fprintf('cough times=%d',n);


timep=locs*(1/fs);


