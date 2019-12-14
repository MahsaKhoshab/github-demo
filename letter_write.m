function letter_write(imm)

im=zeros(8,8);

    m=1;
    for i=1:8
        s=size(imm);
        im(i,:)=imm(m:m+7);
        m=m+8;
    end


    imscale=ones(180,180);

    for i=1:8
        for j=1:8
            if(im(i,j) == 1)
                imscale(   i*20-6 : i*20+6   ,    j*20-6 : j*20+6      ) = 0;
            elseif(im(i,j) == 0)
                imscale(i*20,j*20) = 1;
            end
        end
    end
%     figure
    imshow(imscale)
