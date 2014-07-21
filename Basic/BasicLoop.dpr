{
  Pascal - Loop
  More Detail -> http://www.delphibasics.co.uk/Article.asp?Name=Looping
 }
program Loop;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  Week = (Monday, Tuesday, Wednesday, Thuesday, Friday, Saturday, Sunday);

var
  I: Integer;
  Today: Week;
  Day: array[Week] of String
    = ('Monday', 'Tuesday', 'Wednesday', 'Thuesday', 'Friday', 'Saturday', 'Sunday');
  Hour: Integer;

begin

  //Simple for to
  for I := 0 to 10 do
  begin
    Writeln(IntToStr(I));
  end;

  //Simple for downtp
  for I := 10 downto 0 do
  begin
    WriteLn(I);
  end;

  //Nested
  for Today := Monday to {Friday} do
    for Hour := {0} to {23} do
      WriteLn(Day[] + ' : ' + IntToStr(Hour) + ':' + '00' );

  //Simple While loop
  I := 0;
  while I <= 10 do
  begin
    Write(StrToInt(I));
    //!!!Warning Infinity loop!!!
  end;

  WriteLn();

  //Simple Repeat loop
  I := 0;
  repeat
    Write(StrToInt(I));
    //!!!Warning Infinity loop!!!
  until I < 20;

  ReadLn;
end.

