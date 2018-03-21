

%%Getting the image
mask=imread('2.jpg');
msg=imread('msgimg.jpg');


%%we will be taking the msg grayscale and changing
%%the mask image to get sufficient number of pixels to fit the message

ymsg=size(msg,1);
xmsg=length(msg);

xmask=length(mask);
ymask=size(mask,1);

mask=imresize(mask,[NaN xmsg*8]);
    

mask_g=rgb2gray(mask);
msg_g=rgb2gray(msg);
%%Remove the next line to see the part of the mask that holds the message value
%%result=mask_g;

    
%%Image Resolutions adjusted
%%here we are not filling all the places along i
        
for i=1:ymsg
    for j=1:xmsg
        msg_bi=dec2bin(msg_g(i,j),8);
        for k=1:8
        
            %mask pixerl taken
            mask_bi=dec2bin(mask_g(i,(k+(j-1)*8)),8);
            %mask modified
            mask_bi(8)=msg_bi(k);
            %new image formed
            result(i,(k+(j-1)*8))=bin2dec(mask_bi);
        end
    end
end

a=mask_g-result;%represents the changed pixels, the value will be 1|0 as we are changing the LSB
A=a*150; % so that the changes bits are visible

for i=1:ymsg
    for j=1:xmsg
        for k=1:8
            resultbyte=dec2bin(result(i,(k+(j-1)*8)),8);
            
            result_reconstruct(k)=resultbyte(8);
            %new image formed
        end
        Recoveredimage(i,j)=bin2dec(result_reconstruct);
    end
end

figure(1);imshow(mask_g); title('Cover Image');
figure(2);imshow(msg_g); title('hidden image');
figure(3);imshow(result); title('Output');
figure(4);imshow(A); title('Altered bits');
figure(5);imshow(Recoveredimage); title('Recovered Image');












    


        
        