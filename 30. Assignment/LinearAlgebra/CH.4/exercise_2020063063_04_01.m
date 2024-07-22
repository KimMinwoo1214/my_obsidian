function [pearsonCoeff, cosineSimilarity] = calculateSimilarities(vec1, vec2)
    % vec1과 vec2의 평균 계산
    meanVec1 = mean(vec1);
    meanVec2 = mean(vec2);
    
    % 피어슨 상관 계수 계산
    numerator = sum((vec1 - meanVec1) .* (vec2 - meanVec2));
    denominator = sqrt(sum((vec1 - meanVec1).^2) * sum((vec2 - meanVec2).^2));
    pearsonCoeff = numerator / denominator;
    
    % 코사인 유사도 계산
    cosineSimilarity = dot(vec1, vec2) / (norm(vec1) * norm(vec2));
    
    % 결과 출력
    fprintf('피어슨 상관 계수: %f\n', pearsonCoeff);
    fprintf('코사인 유사도: %f\n', cosineSimilarity);
end