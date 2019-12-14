close all
clear all
clc

load p.mat

ns = 40;

pat = zeros(8,8,ns);

pat(:,:,1) = [    0     0     0     0     0     0     0     0;
                  0     0     1     1     1     1     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     1     1     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0];
        

pat(:,:,2) = [    0     0     0     0     0     0     0     0;
                  0     1     1     1     1     1     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     1     1     1     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     1     1     1     0     0];
         
pat(:,:,3) = [    0     0     0     0     0     0     0     0;
                  0     0     1     1     1     1     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     1     1     0;
                  0     0     1     1     1     1     0     0];
         
       
pat(:,:,4) = [    0     0     0     0     0     0     0     0;
                  0     1     1     1     1     1     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     1     1     1     0     0];
         
pat(:,:,5) = [    0     0     0     0     0     0     0     0;
                  0     1     1     1     1     1     1     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     1     1     1     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     1     1     1     1     0];
         
pat(:,:,6) = [    0     0     0     0     0     0     0     0;
                  0     1     1     1     1     1     1     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     1     1     1     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0];
         
pat(:,:,7) = [    0     0     0     0     0     0     0     0;
                  0     0     1     1     1     1     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     1     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     0     1     1     1     1     1     0];
         
pat(:,:,8) = [    0     0     0     0     0     0     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     1     1     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0];
         
pat(:,:,9) = [    0     0     0     0     0     0     0     0;
                  0     0     1     1     1     1     0     0;
                  0     0     0     1     1     0     0     0;
                  0     0     0     1     1     0     0     0;
                  0     0     0     1     1     0     0     0;
                  0     0     0     1     1     0     0     0;
                  0     0     0     1     1     0     0     0;
                  0     0     1     1     1     1     0     0];
         
pat(:,:,10) = [   0     0     0     0     0     0     0     0;
                  0     0     0     0     0     1     1     0;
                  0     0     0     0     0     1     1     0;
                  0     0     0     0     0     1     1     0;
                  0     0     0     0     0     1     1     0;
                  0     0     0     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     0     1     1     1     1     0     0];
          
pat(:,:,11) = [   0     0     0     0     0     0     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     1     1     0     0;
                  0     1     1     1     1     0     0     0;
                  0     1     1     1     0     0     0     0;
                  0     1     1     1     1     0     0     0;
                  0     1     1     0     1     1     0     0;
                  0     1     1     0     0     1     1     0];
          
pat(:,:,12) = [   0     0     0     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     1     1     1     1     0];
          
pat(:,:,13) = [   0     0     0     0     0     0     0     0;
                  0     1     1     0     0     0     1     1;
                  0     1     1     1     0     1     1     1;
                  0     1     1     1     1     1     1     1;
                  0     1     1     0     1     0     1     1;
                  0     1     1     0     0     0     1     1;
                  0     1     1     0     0     0     1     1;
                  0     1     1     0     0     0     1     1];
          
          
pat(:,:,14) = [   0     0     0     0     0     0     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     1     0     1     1     0;
                  0     1     1     1     1     1     1     0;
                  0     1     1     0     1     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0];
              
% pat(:,:,14) = [   0     0     0     0     0     0     0     0;
%                   0     0     1     1     0     0     1     1;
%                   0     0     1     1     0     0     1     1;
%                   0     0     1     1     1     0     1     1;
%                   0     0     1     1     1     1     1     1;
%                   0     0     1     1     0     1     1     1;
%                   0     0     1     1     0     0     1     1;
%                   0     0     1     1     0     0     1     1];
          
pat(:,:,15) = [   0     0     0     0     0     0     0     0;
                  0     0     1     1     1     1     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     0     1     1     1     1     0     0];
          
pat(:,:,16) = [   0     0     0     0     0     0     0     0;
                  0     1     1     1     1     1     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     1     1     1     0     0;
                  0     1     1     0     0     0     0     0;
                  0     1     1     0     0     0     0     0];
          
pat(:,:,17) = [   0     0     0     0     0     0     0     0;
                  0     0     1     1     1     1     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     0     1     1     1     1     1     1];
          
pat(:,:,18) = [   0     0     0     0     0     0     0     0;
                  0     1     1     1     1     1     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     1     1     1     0     0;
                  0     1     1     1     1     0     0     0;
                  0     1     1     0     1     1     0     0;
                  0     1     1     0     0     1     1     0];
          
pat(:,:,19) = [   0     0     0     0     0     0     0     0;
                  0     0     1     1     1     1     0     0;
                  0     1     1     0     0     1     1     0;
                  0     1     1     0     0     0     0     0;
                  0     0     1     1     1     1     0     0;
                  0     0     0     0     0     1     1     0;
                  0     1     1     0     0     1     1     0;
                  0     0     1     1     1     1     0     0];          
          
          
pat(:,:,20) = [   0     0     0     0     0     0     0     0;
                  0     1     1     1     1     1     1     0;
                  0     0     0     1     1     0     0     0;
                  0     0     0     1     1     0     0     0;
                  0     0     0     1     1     0     0     0;
                  0     0     0     1     1     0     0     0;
                  0     0     0     1     1     0     0     0;
                  0     0     0     1     1     0     0     0];
          
pat(:,:,21:40) = pat(:,:,1:20);
% pat(:,:,41:60) = pat(:,:,1:20);        
% pat(:,:,61:80) = pat(:,:,1:20);
% pat(:,:,81:100) = pat(:,:,1:20);

s = size(pat,3);


for h= ns-19:s

    for i=1:8
        for j=1:8
%             p=rand(1,1);
            if (p(i,j) > 1)
                pat(i,j,h) = ~pat(i,j,h);
            end
        end
    end
         
end

pattern = zeros(s,64);

for h=1:s
    pattern(h,:) = reshape(pat(:,:,h)',1,64);
end


% im=zeros(8,8);
% for h=1:100
%     imm = pattern(h,:);
%     m=1;
%     for i=1:8
%         s=size(imm);
%         im(i,:)=imm(m:m+7);
%         m=m+8;
%     end
% 
% 
%     imscale=ones(180,180);
% 
%     for i=1:8
%         for j=1:8
%             if(im(i,j) == 1)
%                 imscale(   i*20-6 : i*20+6   ,    j*20-6 : j*20+6      ) = 0;
%             elseif(im(i,j) ==  0)
%                 imscale(i*20,j*20) = 1;
%             end
%         end
%     end
%     
% if (h<21)
%     figure(1);
%     hold on
%     subplot(4,5,h); imshow(imscale)
% elseif (h<41)
%     figure(2); 
%     hold on
%     subplot(4,5,h-20); imshow(imscale)
% elseif (h<61)
%     figure(3);
%     hold on
%     subplot(4,5,h-40); imshow(imscale)
% elseif (h<81)
%     figure(4);
%     hold on
%     subplot(4,5,h-60); imshow(imscale)
% else
%     figure(5);
%     hold on
%     subplot(4,5,h-80); imshow(imscale)
% end
%     
% end


% pb = pattern_B;
% pc = pattern_C;
% cb = pc.*pb;
% comp = [pb',pc',cb']
