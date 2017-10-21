% figure
% Cough1FFT=fft(ycough1);
% % plot(0:fs/length(ycough1):fs-fs/length(ycough1),real(coughfft),'k');
% Cough1FFT1=Cough1FFT/max(abs(Cough1FFT));
% plot(0:fs/length(ycough1):fs-fs/length(ycough1),abs(Cough1FFT1),'k');
% xlabel 'Frequency(Hz)';
% ylabel 'Magnitude';
% title 'Original Cough FFT';
% xlim([0 fs/2])


%%figure
Cough2FFT=fft((X(1,:)));
% plot(0:fs/length(X(1,:)):fs-fs/length(X(1,:)),real(Cough2FFT),'k');
Cough2FFT1=Cough2FFT/max(abs(Cough2FFT));
plot(0:fs/length(X(1,:)):fs-fs/length(X(1,:)),abs(Cough2FFT1),'k');
xlabel 'Frequency (Hz)';
ylabel 'Magnitude';
title 'Separated Cough FFT';
xlim([0 fs/2])

%%
figure
Cough2FFT=fft((X(1,:)));
% plot(0:fs/length(X(1,:)):fs-fs/length(X(1,:)),real(Cough2FFT),'k');
Cough2FFT1=Cough2FFT/max(abs(Cough2FFT));
% hold on
% plot(0:fs/length(X(1,:)):fs-fs/length(X(1,:)),abs(Cough2FFT1),'k');
% plot(0:fs/length(ycough1):fs-fs/length(ycough1),abs(Cough1FFT1),'b');
% hold off
 plot(0:fs/length(X(1,:)):fs-fs/length(X(1,:)),abs(abs(Cough2FFT1')-abs(Cough1FFT1)),'k');
xlabel 'Frequency (Hz)';
ylabel 'Magnitude';
title 'Separated Difference';
xlim([0 fs/2])