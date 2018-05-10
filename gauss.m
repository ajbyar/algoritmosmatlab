row = input('Ingrese número de filas ');
column = input ('Ingrese número de columnas ');



for a = 1 : row
for b = 1 : column

valor = input('Ingrese valor de constante ');
matriz(a , b) = valor;
end
end
disp('La matriz es')
matriz


for c = 1 : row - 1
for f = 1 : column
if(c == f)
if matriz (c , f) == 0 && matriz (c + 1 , f) ~= 0
for a = c : row - 1
for b = 1 : column

arreglo2(b) = matriz(a , b);
arreglo3(b) = matriz(a + 1 , b);
end
end

for a = c : row - 1
for b = 1 : column

matriz(c , b) = arreglo3(b);
matriz(a + 1 , b) = arreglo2(b);
end
end

sprintf('Hubo un cambio entre la fila %d y %d', c, c + 1) 
end
for a = c : row - 1
for b = 1 : column

arreglo(b) = matriz(c , b);
arreglo1(b) = matriz(a + 1 , b);
end

d = arreglo(c);
e = arreglo1(c);

for b = 1 : column

arreglo(b) = (arreglo(b)/d)*e;
arreglo1(b) = arreglo1(b) - arreglo(b);
end

for b = 1 : column
matriz(a + 1 , b) = arreglo1(b);
end
end
end
end
end

disp('La matriz con pivote parcial es')
matriz


for c = row : -1 : 1
for f = column : -1 : 1
if(c == f)
if( matriz(c , f) == 0)
continue;


for a = c: -1 : 1
for b = 1 : column 

arreglo(b) = matriz(c , b);
arreglo1(b) = matriz (a - 1 , b);
end

d = arreglo(c);
e = arreglo1(c);

for b = 1 : column

arreglo(b) = (arreglo(b)/d)*e;
arreglo1(b) = arreglo1(b) - arreglo(b);
end

for b = 1 : column
matriz (a - 1 , b) = arreglo1(b);

end
end
end
end
end
end



disp('La matriz con pivote total es')
matriz

