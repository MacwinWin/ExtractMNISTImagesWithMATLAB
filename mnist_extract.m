% Extract MNIST Images With MATLAB
% MATLAB code for extracting MNIST dataset images.

% MNIST Dataset:
% http://yann.lecun.com/exdb/mnist/

% Repository:
% https://github.com/MacwinWin/ExtractMNISTImagesWithMATLAB.git

images = loadMNISTImages('t10k-images.idx3-ubyte');
labels = loadMNISTLabels('t10k-labels.idx1-ubyte');
images2 = loadMNISTImages('train-images.idx3-ubyte');
labels2 = loadMNISTLabels('train-labels.idx1-ubyte');
[w h]=size(images)
endIndex = h
[x y]=size(images2)
endIndex2 = y
dindex=zeros(10,1);
for j=1:endIndex
aImg = reshape( images(:,j), 28, 28);
%imshow(aImg);
label = labels(j);
dindex( label+1 ) = dindex( label+1 ) +1;
dataD = strcat('./',num2str(label),'/mnist_', num2str( label ), '_', num2str( dindex(label+1) ), '.png' );
%dindex
imwrite(aImg, dataD);
dataD
end
for k=1:endIndex2
aImg = reshape( images2(:,k), 28, 28);
%imshow(aImg);
label = labels2(k);
dindex( label+1 ) = dindex( label+1 ) +1;
dataD = strcat('./',num2str(label),'/mnist_', num2str( label ), '_', num2str( dindex(label+1) ), '.png' );
%dindex
imwrite(aImg, dataD);
dataD
end
