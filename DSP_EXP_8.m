fid = fopen('S001.txt','rt');
fclose(fid);
YR = cell2mat(S1);
plot(YR(:,1));
title('EXP8');