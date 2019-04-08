A=imread('cameraman.tif');
M=[-1 -2 -1;0 0 0;1 2 1];
Q1=conv2(A,M);
Q2=conv2(A,M');
figure,
subplot(1,3,1), imshow(Q1); title('Direct matrix'); %%readings not found with imshow
subplot(1,3,2), imshow(Q2); title('Transpose matrix');