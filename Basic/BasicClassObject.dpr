program BasicClassObject;
uses
  FMx.Dialogs, System.SysUtils;

{$R *.res}

type
  Dog = class
    strict private
      DName: String;
      DAge: Integer;

    public

      property Age: Integer read DAge write DAge;
      property Name: String read DName write DName;

      procedure incAge;
      procedure bark;
  end;

{ Dog Method Definition }

procedure Dog.bark;
begin
  ShowMessage(self.DName + ': Hong!!');
end;

procedure Dog.incAge;
begin
  Inc(self.DAge);
end;



var
  Pakkhom: Dog;
  Gaolus: Dog; // <- Please complete this
begin

  Pakkhom := Dog.Create;
  Pakkhom.DName := 'Pakkhom';
  Pakkhom.DAge := 0;
  Pakkhom.bark;
  Pakkhom.incAge;
  ShowMessage(IntToStr(Pakkhom.Age));

  //... Do Gaolus as same as pakkhom

end.

