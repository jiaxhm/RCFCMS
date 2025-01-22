close all
clear all
clear path
warning off
%% Input Image
f=imread('.\Images\334025.jpg');
figure,imshow(f)
Ori_grad=imread('.\Images\Grident.jpg');
figure,imshow(Ori_grad) %The gradient obtained by SE

[rows,cols,dim]=size(f);
if dim==3
    F1=rgb2lab(f);
    FF=f;
else
    F1=f;
    FF=cat(3,f,f,f);
end
%% Initialize parameters
k=800;   %The number of superpixels 
W_r=2;    %The window radius
compactness=15; %weight factor of compactness
expo=2;   %fuzzy exponent

%% AMR-WT
AMR_gradient=w_recons_adaptive(Ori_grad,2, [50,1e-5]);%Optimize gradient information
AMR_Seg=watershed(AMR_gradient);
% figure,imshow(AMR_Seg,[])

se = strel('square', 3);
%Note: For testing purposes, the line "AMR_Seg = imerode(AMR_Seg, se)" should be removed.
AMR_Seg = imerode(AMR_Seg, se); %increase the line thickness
B = labeloverlay(AMR_Seg,AMR_Seg,'Transparency',0.1);
figure,imshow(B)

%% RCFCMS
New_AMR_Seg=AMR_Seg;
[~,~,Seed_local]=Mask_AMR_Region(New_AMR_Seg,k);  %initialize seed points. 
[Label,~]=RCFCMS(rgb2lab(FF),New_AMR_Seg,Seed_local,W_r,compactness,expo);

%% Visual display
BW = boundarymask(Label);
RR=imoverlay(FF,BW,'green');
figure,imshow(RR)