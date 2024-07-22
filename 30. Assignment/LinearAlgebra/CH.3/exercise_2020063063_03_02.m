% 초기 변수 설정
var1 = [0, 1, 2, 3];
offsets = -50:50; % -50에서 50까지의 범위

% 결과 저장을 위한 배열 초기화
pearsonCoefficients = zeros(size(offsets));
cosineSimilarities = zeros(size(offsets));

% 오프셋을 적용하고 상관 계수 및 코사인 유사도 계산
for i = 1:length(offsets)
    var2 = var1 + offsets(i);
    
    % 피어슨 상관 계수 계산
    pearsonCoefficients(i) = corr(var1', var2');
    
    % 코사인 유사도 계산
    cosineSimilarities(i) = dot(var1, var2) / (norm(var1) * norm(var2));
end

% 그래프 생성
figure;
plot(offsets, pearsonCoefficients, 's-', 'LineWidth', 2);
hold on;
plot(offsets, cosineSimilarities, 'o-', 'LineWidth', 2);
hold off;
xlabel('Offset');
ylabel('Similarity');
legend('Pearson Correlation Coefficient', 'Cosine Similarity');
title('Similarity Measures vs Offset');
grid on;