obj = audiorecorder(44100,24,1);
disp('Start recording')
recordblocking(obj,5);
disp('End Recording.');
DATA = getaudiodata(obj);

%%
freq = 44100;
bits = 24;

%%
sound(DATA,freq,bits);


%%
X = 24000;
val=round(1:freq/X:freq*5);
RECORD = DATA(val);
sound(RECORD,X,bits);

%%
X = 16000;
val=round(1:freq/X:freq*5);
RECORD = DATA(val);
sound(RECORD,X,bits);

%%
X = 8000;
val=round(1:freq/X:freq*5);
RECORD = DATA(val);
sound(RECORD,X,bits);

%% 
X = 4000;
val=round(1:freq/X:freq*5);
RECORD = DATA(val);
sound(RECORD,X,bits);

%% Impulse in 'dales_site'
[Impulse,Fs] = audioread('dales_site1_1way_mono.wav');
Impulse = Impulse(round(1:Fs/freq:size(Impulse,1)));
RECORD = conv(Impulse,DATA);
sound(RECORD,freq,bits);

%% Impulse in 'saint-georges'
[Impulse,Fs] = audioread('st_georges_far.wav');
Impulse = Impulse(round(1:Fs/freq:size(Impulse,1)));
RECORD = conv(Impulse,DATA);
sound(RECORD,freq,bits);

%% Impulse in 'st-patrickes' 
[Impulse,Fs] = audioread('stpatricks_s1r1.wav');
Impulse = Impulse(round(1:Fs/freq:size(Impulse,1)));
RECORD = conv(Impulse,DATA);
sound(RECORD,freq,bits);
