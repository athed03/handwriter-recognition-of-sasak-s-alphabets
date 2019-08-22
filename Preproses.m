image = imread ('training_set/bax (1).jpg');

%grayscaling
gray = rgb2gray(image);
       
%Binering Image
thresh = graythresh(gray);
image = im2bw(gray, thresh);
%imshow(image);

%resize

%Cropping image
crop = imcrop(imageresize, [10 10 100 100]);
imshow(crop);

crop = imresize (crop, [64 64]);
batas=64;
bbawah=1;

for i=1:64
    for j=1:64
        if crop(i,j)==0
            if batas>j
                batas=j;
            end
            if bbawah<i
                bbawah=i;
            end
        end
    end
end

%Structuring element
b=[1 1 0];

%Pad array with ones on both sides
c=padarray(crop,[0 1],1);

%Intialize the matrix D of size A with zeros
d=false(size(crop));

for i=1:size(c,1)
    for j=1:size(c,2)-2
        L=c(i,j:j+2);
 %Find the position of ones in the structuring element
        K=find(b==1);
       if(L(K)==1)
        d(i,j)=1;
        end
    end
end

figure,imshow(d);
