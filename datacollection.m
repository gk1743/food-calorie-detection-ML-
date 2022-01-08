clc
clear all
close all
warning off
c=webcam;
x=0;
y=0;
height=500;
width=500;
bboxes=[x y height width];
temp=0;
while temp<=300
    e=c.snapshot;
    IFaces = insertObjectAnnotation(e,'rectangle',bboxes,'Processing Area');   
imshow(IFaces);
filename=strcat(num2str(temp),'.bmp');
es=imcrop(e,bboxes);
es=imresize(es,[227 227]);
    imwrite(es,filename);
    temp=temp+1;
    drawnow;
end
clear c;
