
program BasicCasting;

uses
  FMX.Dialogs, System.SysUtils;

{$R *.res}
var
  i: Integer = 1;
  s: Single = 1.2;
  c: Currency = 1234.20;
  d: Double = 1.5;

  ch: Char = #65;
  str: String = 'Sawasdee';

  b: Boolean = True;

begin
  ShowMessage('i = ' + i);            //IntToStr()
  ShowMessage('s = ' + s);            //FloatToStr()
  ShowMessage('c = ' + c);            //CurrToStr()
  ShowMessage('d = ' + d);            //FloatToStr()

  ShowMessage('ch = ' + ch);
  ShowMessage('str = ' + str);

  ShowMessage('b = ' + b);            //BoolToStr()

  //etc..

  ShowMessage('cast by using String() -> ' + String(ch));
  ShowMessage('cast by using Char() -> ' + Char(65));

end.
