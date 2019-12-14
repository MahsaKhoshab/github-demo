for i = 1:8
x(i,:) = [10 17 25];
end

for j=1:3
y(:,j) = [.95 ; .9 ; .77; .7 ; .6 ; .5 ; .4 ; .3]
end

z = [0 0 0; 45 5 0; 95 60 5; 85 70 40; 75 75 75; 65 55 65;...
     60 50 55; 55 45 30]

% surf(x,y,z)
% mesh(x,y,z)
contour(x,y,z)
xlabel('Noise Level')
ylabel('Vigilance Factor')
zlabel('CCR')