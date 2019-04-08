M = [1 2 1;0 0 0;-1 -2 -1];%[1 1 1; 1 -1 -1 ; -1 -1 -1];
%% 'sample_inp'
figure,
imshow(convn(imread('sample_inp.png'),M));
%% first figure conv with 'blur.jpg'
Q = imread('blur.jpg');
figure,
subplot(1,3,1);
imshow(Q);
subplot(1,3,2);
W = convn(Q,M);
imshow(W);
subplot(1,3,3);
E = convn(Q,M');
imshow(E);
%% second figure conv with 'F1.jpg'
A=imread('F1.jpg');
figure,
subplot(1,3,1);
imshow(A);
B = convn(A,M);
subplot(1,3,2);
imshow(B);
subplot(1,3,3);
C = convn(A,M');
imshow(C);
%% third figure - 'cameraman.tif'
D = imread('cameraman.tif');
figure,
subplot(1,3,1);
imshow(D);
subplot(1,3,2);
F = convn(D,M);
imshow(F);
subplot(1,3,3);
G = convn(D,M');
imshow(G); 
%% fourth figure - 'Faces.jpg' 
H = imread('Faces.jpg');
figure
subplot(1,3,1);
imshow(H);
subplot(1,3,2);
J = convn(H,M);
imshow(J);
subplot(1,3,3);
K = convn(H,M');
imshow(K);
% % 
% % 
% % 
