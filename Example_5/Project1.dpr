program Project1;
{$APPTYPE CONSOLE}
uses
  SysUtils;
var
  { 以下4个变量的数据显然不是4个字节能完全存储的}
  A: array[0..1] of Integer;
  DA: array of Integer;
  SS: string[10];
  S: string;
  procedure ShowInfo(obj: string);
  begin
    Writeln(obj, '实际是一个指针。');
  end;
begin
  SetLength(DA, 2);
  if SizeOf(A) = 4 then
    ShowInfo('A');
  if SizeOf(DA) = 4 then   { 结果为True, 表明动态数组实际是一个指针}
    ShowInfo('DA');
  if SizeOf(SS) = 4 then
    ShowInfo('SS');
  if SizeOf(S) = 4 then    { 结果为True, 表明长字符串实际是一个指针}
    ShowInfo('S');
   Readln;
end.
 