{
  Pascal - Assertion
  Reference -> http://docwiki.embarcadero.com/Libraries/XE5/en/System.Assert
}
program BasicAssert;

{$C+} // <- Assert on(+)/off(-)
uses
  FMX.Dialogs, System.SysUtils;

{$R *.res}

function fibonacci (n: Integer): Integer;
begin
  if n = 0 then
    Result := 0
  else if n = 1 then
    Result := 1
  else
    Result := (fibonacci(n - 1) + fibonacci(n - 2));
end;

begin
  // fibonacci of 10 is 55 indeed
  Assert(fibonacci(10) = 20, 'Invalid return expect 20 but return ' + IntToStr(fibonacci(10)) );
end.
