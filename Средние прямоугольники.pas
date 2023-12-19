Uses Crt;
var 
  a,b,n,sn,h,s,m:real;
  key:integer;
  proga:boolean;
  
function f(var x:real):real;
begin
  f:=1*x*x*x+(-2)*x*x+(-3)*x+4;
end;


function f2(var x:real):real;
begin
  f2:=x*(3*x**3+(-8) *x**2+(-18) *x+48) /12;
end;
begin
n:=-1;
a:=1;
b:=1;
proga:=True;
while proga = True do begin
ClrScr;
writeln('   Программа вычисления площади методом левых прямоугольников');
writeln('1. Ввод промежутков');
writeln('2. Ввод прямоугольников');
writeln('3. Итог');
writeln('4. Выход');

write('Цифра действия: '); readln(key);

case key of 
  
1: begin
sn:=0;
while (a = b) or (a > b) do begin
ClrScr;
write('Введите промежутки '); readln(a,b);
if (a = b) or  (a > b) then begin 
  writeln('Нижний промежуток должен быть меньше верхнего. Enter');
  readln();
  end;
end;
end;

2: begin
while n < 0 do begin
ClrScr;
write('Введите количество прямоугольников '); readln(n);
if n < 0 then begin
  writeln('Количество должно превосходить ноль Enter');
  readln();
end
else
h:=(b-a)/n;
end;
end;

3: begin
ClrScr;
if a = b then begin 
  writeln('Не введены промежутки Enter');
  readln();
  end
else if n < 0 then begin
  writeln('Количество прямоугольников не введено Enter');
  readln();
  end
else begin
m:=a;
while m<= b do begin
  sn:=sn+h*(f(m));
  m+=h;
  end;
s:=abs((f2(b)-f2(a)-sn));
writeln('Площадь = ',sn:0:6);
writeln('Погрешность = ', s:0:6);
readln();
n:=-1;
a:=1;
b:=1;
sn:=0;
end;
end;
4: begin
  proga:=False;
  end;
end;
end;
end.