
sigori(1,:)=ycough1';
sigori(2,:)=yspeech1';
sigori(3,:)=ymusic1';
sigori(4,:)=ymovie1';

n=linspace(0,size(sigori,2)-1,size(sigori,2));
% 
% figure;
% subplot(4,1,1);
% plot(n,sigori(1,:));
% subplot(4,1,2);
% plot(n,sigori(2,:));
% subplot(4,1,3);
% plot(n,sigori(3,:));
% subplot(4,1,4);
% plot(n,sigori(4,:));



A=[0.3791 0.0485 0.6540 0.6340 ; 0.4393 0.9732 0.1277 0.6507 ; 0.9231 0.8788 0.4422 0.1699 ; 0.2485 0.7913 0.0031 0.9229];
sigmix=A*sigori;

% figure;
% subplot(4,1,1);
% plot(n,sigmix(1,:));
% subplot(4,1,2);
% plot(n,sigmix(2,:));
% subplot(4,1,3);
% plot(n,sigmix(3,:));
% subplot(4,1,4);
% plot(n,sigmix(4,:));

%%

sigmix=sigmix';
sigmix1=sigmix(:,1)/max(abs(sigmix(:,1)));
sigmix2=sigmix(:,2)/max(abs(sigmix(:,2)));
% sigmix1=sigmix*([1 1 1 1]'*(max(abs(sigmix))).^(-1))';
% figure;
% subplot(4,1,1);
% plot(n,sigmix1(1,:));
% subplot(4,1,2);
% plot(n,sigmix1(2,:));
% subplot(4,1,3);
% plot(n,sigmix1(3,:));
% subplot(4,1,4);
% plot(n,sigmix1(4,:));
figure;
plot(1/fs:1/fs:length(sigmix1)/fs,sigmix1,'k');
xlabel 'Time (s)';
ylabel 'Normalized Amplitude';
%sound(ycough1,fs);
title 'Background'
% figure;
% plot(1/fs:1/fs:length(sigmix2)/fs,sigmix2,'k');
% xlabel 'Time (s)';
% ylabel 'Normalized Amplitude';
% %sound(ycough1,fs);
% title 'Sigmix'









