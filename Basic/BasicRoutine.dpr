{
  Pascal - Routine, SubRoutine
  reference -> http://www.delphibasics.co.uk/Article.asp?Name=Routines
}
program BasicRoutine;

uses
  System.SysUtils, FMX.Dialogs;

type

  dog = class
    strict private
      dName: String;
      dAge: Integer;

    published
      property Name: String read dName write dName;
      property Age: Integer read dAge write dAge;

    public
      procedure bark;
      function GetBirthday: TDateTime;
  end;

{ dog }

procedure dog.bark;
begin
  ShowMessage('Bark Bark!! ...');
end;

function dog.GetBirthday: TDateTime;
begin
  Result := now;
end;


{ static }
procedure bark (d: Dog);
begin
  d.bark;
  ShowMessage(d.Name + ' Bark');
end;

//Error this function here
function GetDogBirthDay(d: Dog);
begin
  Result := d.GetBirthday;
  ShowMessage(d.Name + ' ' + DateToStr(d.GetBirthday));
end;

var
  Pakkhom: Dog;

begin
  Pakkhom := Dog.Create;
  bark(Pakkhom);
  GetDogBirthDay(Pakkhom);
end.
