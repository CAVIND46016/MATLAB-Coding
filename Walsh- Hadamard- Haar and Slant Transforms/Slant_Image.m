clc;
clear all;
close all;
A=imread('cameraman.tif');
figure,imshow(uint8(A))
title('Original Image');
A=double(A);
[s1 s2]=size(A);
% bs=input('Enter the block sizes for division of the image: '); % Block Size
bs=4;
k=100;

% Hadamard
temp=double(zeros(size(A)));
q_temp=double(zeros(size(A)));
for y=1:bs:s1-bs+1
    for x=1:bs:s2-bs+1
        croppedImage = A((y:y+bs-1),(x:x+bs-1));
        t=getSlantTransform(croppedImage,log2(bs));
        temp((y:y+bs-1),(x:x+bs-1))=t;
        q_temp((y:y+bs-1),(x:x+bs-1))=t;
        q_temp(abs(q_temp)<k)=0;
    end
end
figure,imshow(uint8(temp))

% Inverse Hadamard
temp1=double(zeros(size(A)));
for y=1:bs:s1-bs+1
    for x=1:bs:s2-bs+1
        croppedImage = q_temp((y:y+bs-1),(x:x+bs-1));
        t=getInvSlantTransform(croppedImage,log2(bs));
        temp1((y:y+bs-1),(x:x+bs-1))=t;
    end
end
figure,imshow(uint8(temp1))
get_PSNR(A,temp1)