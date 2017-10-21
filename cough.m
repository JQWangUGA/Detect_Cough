fs=8000;
tmax=10;
nbits=16;
nchan=1;
Recorder=audiorecorder(fs,nbits,nchan);
record(Recorder);
fprintf(1,'Recording...\n');
pause(tmax);
stop(Recorder);
ycough=getaudiodata(Recorder,'int16');
ycough1=double(ycough);
ycough1=ycough1/max(abs(ycough1));
%%
plot(1/fs:1/fs:length(ycough1)/fs,ycough1,'k');
xlabel 'Time (s)'
ylabel 'Normalized Amplitude'
%sound(ycough1,fs);
title 'Original Cough'
