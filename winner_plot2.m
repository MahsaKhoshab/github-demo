function winner_plot2(winner,pattern)
% close all
% clear 
% clc 
% 
% winner = [1, 2, 2 , 1 ,3 ,3, 4 , 5,6 ,7 ,8, 9,10,5,11,12,  11 ,13,14,15];

% pat_noise

number_of_samples = 40;
ns = number_of_samples;

repeat_counter = zeros(1,ns);

for i=2:ns
    for j=1:i-1
        if ( winner(i) ==  winner(j))
            repeat_counter(1,j) = repeat_counter(1,j)+1;
        end
    end
end
repeat_counter;
src = sum(repeat_counter);
mrc = max(repeat_counter);
    

im=zeros(8,8);
for h=1:ns
    imm = pattern(h,:);
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
            elseif(im(i,j) ==  0)
                imscale(i*20,j*20) = 1;
            end
        end
    end
    data_imscale(:,:,h) = imscale;

end

max_winner = max(winner);

% figure
subplot(mrc+1,max_winner,1); imshow(data_imscale(:,:,1))
srow = zeros(1,max_winner);
% winner = [1, 2, 2 , 1 ,3 ,3, 4 , 5,6 ,7 ,8, 9,10,5,11,12,  11 ,13,14,15];
for i=2:ns
    step = i;
    for j=i:ns
        sample = j;
        class = winner(j);
        samples_classes = sum(srow);
        if ( i == (class + samples_classes) )
            subplot(mrc+1,max_winner,class); imshow(data_imscale(:,:,j))
      
            break
        else
            srow(1,winner(j)) = srow(1,winner(j))+1;
            t1 = srow(1,winner(j)) * max_winner + winner(j);
            subplot(mrc+1,max_winner,t1); imshow(data_imscale(:,:,j))

            break
        end
    end
end
    
end


