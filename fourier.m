fs=8;//サンプリング周波数を決定
t=0:1/fs:1;//０から1秒まで1/8ずつの値を生成する
y=sin(2*pi*t);//先ほどのtを代入
plot(t,y);//連続的に描画
yfft=fft(y,8)//8点で時間関数を周波数関数にフーリエ変換
stem(f,abs(yfft))//離散フーリエ変換の絶対値を離散的に描画
xticks([0:1:7])//N=0..7までとメモリを決定
xticklabels({'0','1','2','3','4','5','6','7'})//各メモリをラベル付け
xlabel('k')//軸ラベル
ylabel('振幅スペクトル')
