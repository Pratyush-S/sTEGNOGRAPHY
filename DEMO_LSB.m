
%result=mask_g;
 msg_g=[1 2;0 255];
mask_g=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
result=mask_g;
for i=1:2
    for j=1:2
        msg_bin=dec2bin(msg_g(i,j),8);
        for k=1:8
        
            %mask pixerl taken
            mask_bin=dec2bin(mask_g(i,(k+(j-1)*8)),8);
            %mask modified
            mask_bin(8)=msg_bin(k);
            %new image formed
            result(i,(k+(j-1)*8))=bin2dec(mask_bin);
        end
    end
end
display(result)