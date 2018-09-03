I = imread('MLD-2-960x540.png');
Iout = convertBlueLSV(I);

%% Show control
figure(1); imshow(I);
title('Control')
%% Show altered
figure(2); imshow(Iout);
title('Blue most significant bit set low')