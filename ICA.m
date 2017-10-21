%%
X=fastica(sigmix);
figure;
 X1(1,:)=X(1,:)/max(abs(X(1,:)));
% X1(2,:)=X(1,:)/max(abs(X(2,:)));
% X1(3,:)=X(1,:)/max(abs(X(3,:)));
% X1(4,:)=X(1,:)/max(abs(X(4,:)));
%subplot(4,1,1);
   plot(1/fs:1/fs:length(X1(1,:))/fs,X1(1,:));
%  subplot(4,1,2);
% plot(n,X(2,:));
% subplot(4,1,3);
% plot(n,X(3,:));
% subplot(4,1,4);
%  plot(n,X(4,:));
