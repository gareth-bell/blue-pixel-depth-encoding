fNamesEm = dir('.\2018-09-Embedded Tests\*.png')
for n = 1:length(fNamesEm)
    I = imread(['.\2018-09-Embedded Tests\',fNamesEm(n).name]);
    Iout = convertBlueLSV(I);
    imwrite(Iout,fNamesEm(n).name)
end
%%
dirName = '.\1440-02\'
fNamesEm = dir([dirName,'*.png']);
for n = 1:length(fNamesEm)
    I = imread([dirName,fNamesEm(n).name]);
    Iout = convertBlueLSV(I);
    imwrite(Iout,fNamesEm(n).name)
end