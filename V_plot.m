% close all
ns = 40;

figure
for i=1:ns
    subplot(5,8,i); letter_write(V(i,:))
end


% ns = 20;
% 
% figure
% for i=1:ns
%     subplot(4,5,i); letter_write(V(i,:))
% end