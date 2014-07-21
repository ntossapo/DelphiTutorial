{
  Introduce DataType in Pascal and casting
  - more detail click -> http://www.delphibasics.co.uk/Article.asp?Name=DataTypes
  - #(number) -> ascii
  - to declare variable, use keyword var then variable name + : + type

  # c is currency, Declare it before compile
  # variable initialize incorrectly
}
program BasicPrimitive;

uses
  FMX.Dialogs,
  System.SysUtils;

var
  i: String;
  si: char;

  var s: boolean;
  var b: integer;

  //other primitive datatype
  //  -> http://www.delphibasics.co.uk/Article.asp?Name=DataTypes
begin
  i := #12;
  si := '123.5';
  c :=  20;

  s := 'This is String';
  b := True;//or False

  ShowMessage(
    'i : ' + i + #10 +
    'si : ' + FloatToStr(si) + #10 +
    'c : ' + CurrToStr(c) + #10 +
    's : ' + s + #10 +
    'b : ' + BoolToStr(b)
  );
end.

