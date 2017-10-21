fs=8000;
tmax=10;
nbits=16;
nchan=1;
Recorder=audiorecorder(fs,nbits,nchan);
record(Recorder);
fprintf(1,'Recording...\n');
pause(tmax);
stop(Recorder);
ymovie=getaudiodata(Recorder,'int16');
ymovie1=double(ymovie);
ymovie1=ymovie1/max(abs(ymovie1));


%%
plot(1/fs:1/fs:length(ymovie1)/fs,ymovie1,'k');
xlabel 'Time (s)'
ylabel 'Normalized Amplitude'
%sound(ycough1,fs);
title 'Original Movie'