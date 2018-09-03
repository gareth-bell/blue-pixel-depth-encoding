function Iout =  convertBlueLSV(I)


    %% check reshapiing
    [m,n,p] = size(I);
    B = I(:,:,3);
    Bv = B(:);

    %% Now do conversion 

    BvBin = dec2bin(Bv);

    % Change the lsb to zero
    BvBin(:,end) = '0';
    Bv_alt = bin2dec(BvBin);

    % reshape to original size
    B_alt = reshape(Bv_alt,[m,n]);
    Iout = I;
    Iout(:,:,3) = B_alt;
