y0 = 0; %posición inicial en y
x0 = 0; %posición inicial en x

angle = 40; %ángulo de lanzamiento
v0 = 10; % velocidad inicial
g = -9.8; %aceleración de gravedad
dt = 0.001;%diferencial de tiempo
t = 0; %tiempo

vx = v0 * cosd(angle); %Velocidad en x
vy = v0 * sind(angle); %Velocidad en y

xf = x0; %inicial posición x final con la posición x incial
yf = y0; %inicial posición y final con la posición y incial

x = [xf]; %inicialización de las posiciones de x, se agrega la posición incial
y = [yf]; %inicialización de las posiciones en y, se agrega la posición incial
i = 0; 

c = 0.3;
p = 3;
r = 0.4;
A = pi*r^2;
m = 1;
f = -(0.5*c*p*A)/m;


while yf > 0 || i == 0
    ax = f * sqrt(vx^2 + vy^2) * vx;
    ay = g + (f * sqrt(vx^2 + vy^2) * vy);
    
    vx = vx + ax * dt; % Calculo de la velocidad en x
    vy = vy + ay * dt; % Calculo de la velocidad en y

    xf = xf + vx * dt; %Posición final de x
    yf = yf + vy * dt; %Posición final de y

    x = [x xf]; %Agregar última posición en x a la matriz, si tienen otra forma de hacerlo se aceptan sugerencias, este proceso es muy lento a la larga
    y = [y yf]; %Agregar última posición en y a la matriz

    t = t + dt; % Calcular el tiempo final
    i = i + 1; % Just counting 
end


plot(x,y)



