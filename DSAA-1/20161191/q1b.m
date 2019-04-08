function f2 = resize2(A,X)
   % A=imread('cameraman.tif');
   % X=2;
    irows = size(A,1);
    icols = size(A,2);   
    orows=X*irows;
    ocols=X*icols;
    [cf, rf] = meshgrid(1 : ocols, 1 : orows);

    rf = rf/X;
    cf = cf/X;
    r = floor(rf);
    c = floor(cf);

    r(r < 1) = 1;
    c(c < 1) = 1;
    r(r > irows - 1) = irows - 1;
    c(c > icols - 1) = icols - 1;

    delR = rf - r;
    delC = cf - c;

    in1_ind = sub2ind([irows, icols], r, c);
    in2_ind = sub2ind([irows, icols], r+1,c);
    in3_ind = sub2ind([irows, icols], r, c+1);
    in4_ind = sub2ind([irows, icols], r+1, c+1);       

    out = zeros(orows, ocols);
    out = cast(out, class(A));

    for i = 1 : size(A, 3)
        chan = double(A(:,:,i));
        tmp = chan(in1_ind).*(1 - delR).*(1 - delC) + ...
                       chan(in2_ind).*(delR).*(1 - delC) + ...
                       chan(in3_ind).*(1 - delR).*(delC) + ...
                       chan(in4_ind).*(delR).*(delC);
        out(:,:,i) = cast(tmp, class(A));
    end
    B=uint8(out);
    figure,
    subplot(1,2,1), subimage(A); title('Bilinear Original Image'); %%readings not found with imshow
    subplot(1,2,2), subimage(B); title('Bilinear After Image');
end

    