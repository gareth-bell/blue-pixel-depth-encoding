imPath = '.\Reference Demo Content\Reference Demo Content\1440\'
fName = '1440-BMW 7-Series-Comfort-SLD.png'
I = imread([imPath,fName]);
Iout = convertBlueLSV(I);
imwrite(Iout,['.\',fName,'converted.png']);

%% Show control
figure(1); imshow(I);
title('Control')
%% Show altered
figure(2); imshow(Iout);
title('Blue most significant bit set low')