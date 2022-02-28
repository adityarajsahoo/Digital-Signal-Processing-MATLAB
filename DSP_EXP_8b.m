fid = fopen('Z001.txt','rt');
fclose(fid);
YR = cell2mat(Z001);
plot(YR(:,1));
title('EXP8b');