% the goal is to design an ART network to learn storing and recognizing the alphabets A to T.
% the vigilance level and noise level can vary after the training process.

clear
close all
clc

% Input ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% pat_noise_more
pat_noise_diff
% pat_noise_equal
data_s = pattern';

% Step 1 ##################################################################
% Parameters Definition ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Ro_0 = .4;

% Ro = Ro_0;

n = 64;
L = 2;
number_of_patterns = size(data_s,2);
M = number_of_patterns;

% Initialization ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
W = ((L-1)/(L-1+n))*ones(n,M);
V = ones(M,n);

Counter_Total = 0;

winner = zeros(1,M);

% Step 2 ##################################################################
stop = 0;
while (stop==0)
    Counter_Total = Counter_Total + 1;
% Step 3 ##################################################################
    for h = 1:number_of_patterns
        
        if (h<21)
            Ro = 1;
        else 
            Ro = Ro_0;
        end
            
            
        pattern_number = h

        % Step 4 ##################################################################
        y = zeros(M,1);
        s = data_s(:,h);
        
%         if (h==21)
%             figure
%             letter_write(s)
%             title('s')
%         end
        
% Step 5 ##################################################################
        s_norm = norm(s,1)
        
% Step 6 ##################################################################
        x = s;
        
% Step 7 ##################################################################
        for q=1:M
            if(y(q)~=-1)
                y(q) = W(:,q)'*x;
            end
        end
        
% Step 8 ##################################################################
        reset = 1;
        attempt = 0;
        while (reset==1)
            attempt = attempt + 1
% Step 9 ##################################################################
            [y_max,y_index] = max(y);
            y
% Step 10 #################################################################
            for i=1:n
                x(i) = s(i)*V(y_index,i);
            end
            
%            if (h==21)
%                figure
%                letter_write(x)
%                title('x')
%            end
% Step 11 #################################################################
            x_norm = norm(x,1)

% Step 12 #################################################################
            % Vigilance Test ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            xds = x_norm/s_norm
            Ro
            if ( (x_norm/s_norm) < Ro)
                y(y_index)=-1;
                Vigilance = 0
            else
                reset = 0;
                Vigilance = 1
            end
            
        end
                
% Step 13 #################################################################
        for i = 1:n
            % W update ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            if(x(i)==1)
                W(i,y_index) = (L*x(i)) / (L - 1 + x_norm);
            end
            % V update ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            V(y_index,i) = x(i);
        end
        
    winner(h) = y_index
    
end
    

% Step 14 #################################################################
    if (h == number_of_patterns)
        stop = 1;
    end
end

winner


screen_size = get(0, 'ScreenSize');
f1 = figure;
set(f1, 'Position', [0 0 screen_size(3) 2*screen_size(4) ] );
winner_plot4(winner,pattern)

V_plot


    
    

