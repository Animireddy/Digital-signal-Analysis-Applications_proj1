function f = resize1(A,X)
   
    [m,n]=size(A);
    o_row=m*X;
    o_col=n*X;
    
    f=zeros(m*X:n*X);
    for i=0:(o_row-1)
        for j=0:(o_col-1)
            xval=floor(i/X);
            yval=floor(j/X);
            f(i+1,j+1)=A(xval+1,yval+1);
        end
    end
    
    figure,
    
    B=uint8(f);
    subplot(1,2,1), subimage(A); title('Nearest Original Image'); %%readings not found with imshow
    subplot(1,2,2), subimage(B); title('Nearest After Image');
end
            
            
