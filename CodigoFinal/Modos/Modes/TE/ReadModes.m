
%% getmodes
clc;

Xs = [300, 475, 650, 825, 1000];
Ys = [100, 325, 550, 775, 1000];
Ls = [510,750,1000,1530,1555,1580];
l = Ls(6);
y = Ys(5);


disp("y: "+string(y))
disp("l: "+string(l))

ex = 0;
nx = "";
for x = Xs
    try
        load("Waveguide"+string(x)+"_"+string(y)+"_"+string(l)+".mat");
    catch
        nmodes = 0;
        %ex = 1;
        %nx = nx+string(x)+", ";
    end
    disp("x: "+string(x))
    disp("  Modos: "+string(nmodes))
end

if ex==1
    disp("Alguno no existio");
    disp(nx);
end