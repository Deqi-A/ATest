program Project1;
{$APPTYPE CONSOLE}
uses
  SysUtils;
var
  { ����4��������������Ȼ����4���ֽ�����ȫ�洢��}
  A: array[0..1] of Integer;
  DA: array of Integer;
  SS: string[10];
  S: string;
  procedure ShowInfo(obj: string);
  begin
    Writeln(obj, 'ʵ����һ��ָ�롣');
  end;
begin
  SetLength(DA, 2);
  if SizeOf(A) = 4 then
    ShowInfo('A');
  if SizeOf(DA) = 4 then   { ���ΪTrue, ������̬����ʵ����һ��ָ��}
    ShowInfo('DA');
  if SizeOf(SS) = 4 then
    ShowInfo('SS');
  if SizeOf(S) = 4 then    { ���ΪTrue, �������ַ���ʵ����һ��ָ��}
    ShowInfo('S');
   Readln;
end.
 