% 学生証番号: 854030
% 氏名: 山本昂平

% 信号の条件指定
Fs = 44100; % サンプリング周波数44100Hz
F0 = 440; % 基本周波数（音の高さ）
A = 1.0; % 信号の振幅（音の大きさ）
time = 1.0; % 音の持続時間
t = 0 : 1/Fs : time; % 0からtimeまで音を再生する

% 正弦波の再生
y = A * sin(2 * pi * F0 * t); 
soundsc(y, Fs, 16);  

filename = 'sine1.wav';

% wavファイルへの書き出し
audiowrite(filename, y, Fs,'BitsPerSample',16);