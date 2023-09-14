%% getmodes
Xs = [300, 475, 650, 825, 1000];
Ys = [100, 325, 550, 775, 1000];
x = Xs(3);
y = Ys(3);
Ls = [510,750,1000,1530,1555,1580];

disp("x: "+string(x))
disp("y: "+string(y))

for l = Ls
    load("Waveguide"+string(x)+"_"+string(y)+"_"+string(l)+".mat");
    disp("l: "+string(l))
    disp(nmodes)
end