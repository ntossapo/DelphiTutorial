{
  Introduce Record in the Pascal
  Record in pascal as same as typedef in c/c++
}

program BasicRecord;

uses
  FMX.Dialogs, System.SysUtils;

const
  EOL = #10;

{$R *.res}
type
  Dog = Record
    Name: String;
    Age: Integer;
    Owner: String;
    procedure AgePlusPlus;
  End;

procedure Dog.AgePlusPlus;
begin
  self.Age := self.Age + 1;
end;

var
  SkoodskillDog: array of Dog;

begin
  SetLength(SkoodskillDog, 2);

  SkoodskillDog[0].Name := 'gaoluch';
  SkoodskillDog[0].Age := 2;
  SkoodskillDog[0].Owner := 'Aj. Jedt';

  {
  ... Pakkhomm ...
  }

  SkoodskillDog[0].AgePlusPlus;

  ShowMessage('Name : ' + SkoodskillDog[0].Name + EOL
              + 'Age : ' + IntToStr(SkoodskillDog[0].Age) + EOL
              + 'Owner : ' + SkoodskillDog[0].Owner);

  ShowMessage('Name : ' + SkoodskillDog[1].Name + EOL
              + 'Age : ' + IntToStr(SkoodskillDog[1].Age) + EOL
              + 'Owner : ' + SkoodskillDog[1].Owner);
end.



