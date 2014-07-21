{
  Pascal - Condition
  Reference -> http://www.delphibasics.co.uk/Article.asp?Name=Logic
}
program BasicCondition;

uses
  FMX.Dialogs, System.SysUtils, System.Math;

{$R *.res}
begin

  //Simple if
  if Sqr(2) = 4 then
  begin

    ShowMessage('Sqr(2) = 4 using simple if');

  end;


  //Simple quick if. Allow only one statement
  if Sqr(2) = 4 then
    ShowMessage('Sqr(2) = 4 using quick if');


  //if-else
  if Sqr(2) = 3 then
    ShowMessage('Sqr(2) = 3')

  else if Sqr(2) = 5 then
  begin

    ShowMessage('Sqr(2) = 5')

  end
  else
    ShowMessage('Sqr(2) = ' + IntToStr(Sqr(2)) + ' using if else');


  //nested
  if Sqr(2) = 4 then
  begin

    if Sqr(3) = 9 then
      if Sqr(4) = 16 then
      begin
        ShowMessage('This is Nested If Else');
      end;

  end;

  //try by yourself
  if //.. then


  ShowMessage('End Program');
end.
