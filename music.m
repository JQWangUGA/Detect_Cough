fs=8000;
tmax=10;
nbits=16;
nchan=1;
Recorder=audiorecorder(fs,nbits,nchan);
record(Recorder);
fprintf(1,'Recording...\n');
pause(tmax);
stop(Recorder);
ymusic=getaudiodata(Recorder,'int16');
ymusic1=double(ymusic);
ymusic1=ymusic1/max(abs(ymusic1));
plot(ymusic1);
sound(ymusic1,fs);

plot(1/fs:1/fs:length(ymusic1)/fs,ymusic1,'k');
xlabel 'Time (s)'
ylabel 'Normalized Amplitude'
%sound(ycough1,fs);
title 'Original Music'