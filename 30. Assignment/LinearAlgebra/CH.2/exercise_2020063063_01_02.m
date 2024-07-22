function uVec = unitVector(vec)
    magnitude = norm(vec);
    uVec = vec / magnitude;
 
    if magnitude == 0
        warning('Input vector is zero. Returning NaNs.');
        uVec = NaN * vec;
    end
end