function edgedetect(a)
f=imread(a);
f=im2double(f);
choice=0;
while (choice~=5)
choice=input('1: Prewitt\n2: Roberts\n3: Laplacian of a Guassian(LoG)\n4: Canny\n5: Exit\n Enter your choice : ');
switch choice
    case 1
        PF=edge(f,'prewitt');
        figure, imshow(f),title('Original Image'),figure,imshow(PF),title('Prewitt Filter');
    case 2
        RF=edge(f,'roberts');
        figure, imshow(f),title('Original Image'),figure,imshow(RF),title('Roberts Filter');
    case 3
        LF=edge(f,'log');
        figure, imshow(f),title('Original Image'),figure,imshow(LF),title('Laplacian of Gaussian (LoG) Filter');
    case 4
        CF=edge(f,'canny');
        figure, imshow(f),title('Original Image'),figure,imshow(CF),title('Canny Filter');
    case 5
        disp('Program Exited');
    otherwise
        disp('\nWrong Choice\n');
    end
end