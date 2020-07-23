% 学生証番号: 854030
% 氏名: 山本昂平

% 信号の条件指定
Fs = 44100; % サンプリング周波数44100Hz
F0 = 300; % 基本周波数（音の高さ）
A = 1.0; % 信号の振幅（音の大きさ）
time = 1.0; % 音の持続時間
t = 0 : 1/Fs : time; % 0からtimeまで音を再生する
n = 100; % 重ね合わせる高調波の数の指定
 
% のこぎり波の値の計算
sigma = 0;
for harmWav = 1:n
    sigma = sigma + 0.5*sin( 2*pi*F0*harmWav*t )  / harmWav ;
end

soundsc(sigma, Fs, 16);

filename = 'sawtooth1.wav';

% wavファイルへの書き出し 
audiowrite(filename,sigma,Fs,'BitsPerSample',16);
