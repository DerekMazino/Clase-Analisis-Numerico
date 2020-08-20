x = [ -6.0 -2.0 0.0 2.0 6.0 ];
y = [ -5.3 -3.5 -1.7 -0.2 4.0];


x2 = x.^2;
xy = x.*y;
sumx2 = 0;
sumxy = 0;
sumx = 0;
sumy = 0;

for i=1:n;
    
sumx2 = sumx2 + x2(i);
sumxy = sumxy + xy(i);
sumx =  sumx + x(i);
sumy = sumy + y(i);
end
n = length(x);
fprintf('Vector X^2: ');
disp(x2);
disp(sumx2);
fprintf('Vector XY: ');
disp(xy);
disp(sumxy);
fprintf('Vector X: ');
disp(x);
disp(sumx);
fprintf('Vector Y: ');
disp(y);
disp(sumy);