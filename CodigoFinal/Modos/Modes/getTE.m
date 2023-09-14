%% Read TE
xs = [475,825,1000];
ys = [775,325,325];
sel = 3;

x = xs(sel);
y = ys(sel);

Ls = [510,750,1000,1530,1555,1580];
disp("x: "+string(x))
disp("y: "+string(y))
for l = Ls
    disp("lambda: "+string(l))
    load("./TE/Waveguide"+string(x)+"_"+string(y)+"_"+string(l)+".mat");
    disp("  TE: "+string(TE))
    load("./overlapTE/Waveguide"+string(x)+"_"+string(y)+"_"+string(l)+".mat");
    disp("  overlapTE: "+string(modeOverlap.fraction))
end