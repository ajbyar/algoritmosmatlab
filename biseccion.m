clear all;
format short;
a=input('Introduzca el valor de a: ');
b=input('Introduzca el valor de b: ');
cont=input('Introduzca el número de iteraciones cont: ');
fun=input('Introduzcal a funcion f(x)=','s');
f=inline(fun);
for k=1:cont
    c=(a+b)/2;
    e=abs((b-a)/2);
    A(k,:)=[k a b c f(c) e];
    if f(a)*f(c)<0
        b=c;
    else
        a=c;
    end
end
fprintf('\n \tk \ta \tb \tc \tf(c) \terror \n')
disp(A)
fprintf('Solución:\n c=%8.5f\n',c)
fprintf('f(c)=%8.5f\n',f(c))
fprintf('error=%8.5f\n',e)