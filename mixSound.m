% 学生証番号: 854030
% 氏名: 山本昂平

% 4つの波形を合成した音の出力
% 各信号の条件指定
Fs = 44100; %サンプリング周波数44100Hz
F0 = 440; %基本周波数（音の高さ）440Hz
A = 1.0; %信号の振幅（音の大きさ）1.0
time = 0.5; %音の持続時間0.5秒
t = 0 : 1/Fs : time; %0からtimeまで音を再生する
n = 1; % 高調波の数

x1 = A * sin(2 * pi * F0 * t); % 正弦波              
x2 = sawtooth(2 * pi * n*F0 * t); % のこぎり波
x3 = square(2 * pi * n*F0 * t); % 矩形波の再生
x4 = sawtooth(2 * pi * n*F0 * t, 0.5); % % 三角波

mix = x1+x2+x3+x4; % 波形の合成

soundsc(mix, Fs, 16); % 合成音響の再生

filename = 'wavdata2.wav';

% wavファイルへの書き出し
audiowrite(filename,mix,Fs,'BitsPerSample',16);

