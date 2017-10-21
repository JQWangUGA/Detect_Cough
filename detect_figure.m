zn=z(1,:)/max(abs(z(1,:)))
figure
subplot(2,1,1);
plot(1/fs:1/fs:length(X1(1,:))/fs,X1(1,:),'k');
xlabel('time(s)');
ylabel('Nomalized Amplitude');
title('Separated Cough');
subplot(2,1,2);
hold on
plot(1/fs:1/fs:length(X1(1,:))/fs,zn,'k');
axis([0 10 0 1]);
[PKS,LOCS]=findpeaks(zn,'minpeakheight',0.1);
plot(LOCS/fs,PKS,'*r');
xlabel('time(s)');
ylabel('Nomalized Amplitude');
title('Detection Results');
box on
hold off