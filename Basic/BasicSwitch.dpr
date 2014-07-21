{
  Pascal - Switch case
  Reference -> http://www.delphibasics.co.uk/RTL.asp?Name=Case
}
program BasicSwitch;

uses
  FMX.Dialogs, System.SysUtils;

{$R *.res}
type
  TPrimaryColor = (Red, Green, Blue, Yellow);

var
  color: TPrimaryColor;
  number: Integer;
begin
  color := GReen;

  //simple enum case
  case color of

    Red:    ShowMessage('The color is Red');
    Green:  ShowMessage('The Color is Green');
    Blue:   ShowMessage('The Color is Blue');
    Yellow: ShowMessage('The Color is Yellow');

     ShowMessage('The Color is Unknow!');
  end;

  number := 14;

  case number mod 3 of
    0 : ShowMessage(IntToStr(Number)+' mod 3 = 0');
    1 : ShowMessage(IntToStr(Number)+' mod 3 = 1');
    2 :
    begin

      ShowMessage(IntToStr(Number)+' mod 2 = 2');
      number := 0;

    end;
    else ShowMessage('?????');
  end;

  ShowMessage(IntToStr(Number));
end.
