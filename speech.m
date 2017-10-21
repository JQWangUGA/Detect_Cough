fs=8000;
tmax=10;
nbits=16;
nchan=1;
Recorder=audiorecorder(fs,nbits,nchan);
record(Recorder);
fprintf(1,'Recording...\n');
pause(tmax);
stop(Recorder);
yspeech=getaudiodata(Recorder,'int16');
yspeech1=double(yspeech);
yspeech1=yspeech1/max(abs(yspeech1));
%%
plot(1/fs:1/fs:length(yspeech1)/fs,yspeech1,'k');
xlabel 'Time (s)'
ylabel 'Normalized Amplitude'
%sound(ycough1,fs);
title 'Original Speech'
