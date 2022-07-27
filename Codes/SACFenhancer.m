function ESACF = SACFenhancer(SACF)
    % We first clip the SACF to positive values
    clipped_SACF = zeros([1, length(SACF)]);
    for ii = 1 : length(SACF)
        if SACF(ii) < 0
            clipped_SACF(ii) = 0;
        else
            clipped_SACF(ii) = SACF(ii);
        end
    end
    
    % Then we time scale it by a factor of two
    scaled_clipped_SACF = zeros([1, length(SACF)]);
    for ii = 1 : ceil((1/2)*length(clipped_SACF))
        scaled_clipped_SACF(2*ii - 1) = clipped_SACF(ii);
    end
    
    % Now we subtract the time scaled SACF from the original clipped SACF
    diff = clipped_SACF - scaled_clipped_SACF;
    
    % Clipping this difference to positive values gives ESACF
    ESACF = zeros([1, length(diff)]);
    for ii = 1 : length(diff)
        if diff(ii) < 0
            ESACF(ii) = 0;
        else
            ESACF(ii) = diff(ii);
        end
    end
        
            

end