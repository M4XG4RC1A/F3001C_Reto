%% Read TE
clc;

xs = [825,1000];
ys = [325,325];
sel = 2;

x = xs(sel);
y = ys(sel);

Ls = [510,750,1000,1555,1580];
disp("x: "+string(x))
disp("y: "+string(y))
for l = Ls
    disp("lambda: "+string(l))
    load("./TE/Waveguide"+string(x)+"_"+string(y)+"_"+string(l)+".mat");
    disp("  TE: "+string(TE*100))
    load("./overlapTE/Waveguide"+string(x)+"_"+string(y)+"_"+string(l)+".mat");
    disp("  overlapTE: "+string(modeOverlap.fraction*100))
end