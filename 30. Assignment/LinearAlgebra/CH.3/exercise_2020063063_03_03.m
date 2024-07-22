% 엣지 검출을 위한 커널
kernel = [-1, 1];

% 시계열 데이터 - 플래토 함수
% 플래토가 11번 인덱스에서 시작해서 20번 인덱스에서 끝난다고 가정하자
time_series = zeros(1, 31);
time_series(11:21) = 1;
time_series(1:11) = -1;
time_series(21:31) = -1;

% 점곱을 저장하기 위한 배열 초기화
dot_products = zeros(1, length(time_series) - length(kernel) + 1);

% 각 시간 지점에서의 점곱을 계산
for i = 1:length(dot_products)
    segment = time_series(i:i+length(kernel)-1);
    dot_products(i) = dot(kernel, segment);
end

% 그래프 그리기
subplot(1, 3, 1);
plot(15:16, kernel);
title('A) 커널');
xlim([-1 30]);
ylim([-1 1.5]);

subplot(1, 3, 2);
plot(0:length(time_series)-1, time_series);
title('B) 시계열 신호');
xlim([-1 30]);
ylim([-1 1.5]);

subplot(1, 3, 3);
hold on;
plot(0:length(dot_products)-1, dot_products, 'LineStyle', '--', 'Marker', 'diamond');
plot(0:length(time_series)-1, time_series, 'LineStyle', '-', 'Marker', 'o');
hold off;
title('C) 엣지 검출');
xlim([-1 30]);
ylim([-1 1.5]);

% 축 라벨링
xlabel('시간');
ylabel('진폭');
legend("엣지 검출", "신호");