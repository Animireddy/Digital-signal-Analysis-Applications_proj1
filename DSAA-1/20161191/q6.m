A = imread('Faces.jpg');
[r, c x] = size(A);

B = imread('F1.jpg');
[r1, c1 x] = size(B);

max = 0;
row=0;
col=0;
for i=1:r-r1+1
    for j=1:c-c1+1
        cnt =0;
        if(j+c1-1<=c)
            if(i+r1-1<=r)
                cnt = sum((A(i:i+r1-1,j:j+c1-1) == B(1:r1,1:c1)));
                if(max>=cnt)
                    %% do nthng
                else
                    row=i;
                    col=j;
                    max=cnt;
                end 
            end   
        end
    end
end
disp(row);
disp(col);
imshow('Faces.jpg');
hold on;
rectangle('Position',[col,row,r1,c1],...
          'Curvature',[0.8,0.4],...
          'EdgeColor','r',...
         'LineWidth',5,'LineStyle','-')



