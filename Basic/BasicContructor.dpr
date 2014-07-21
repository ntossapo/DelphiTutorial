program BasicContructor;

uses
  FMX.Dialogs;

{$R *.res}

type
  Dog = class
    strict private
      dName: String;
      dAge: Integer;

    public
      Constructor Create(Name: String; Age: Integer);
      Destructor Destroy; override;
  end;

{ Dog }

constructor Dog.Create(Name: String; Age: Integer);
begin
    self.dName := Name;
    self.dAge := Age;
    ShowMessage('This is ' + self.dName + '''s Constructor');
end;

destructor Dog.Destroy;
begin
    ShowMessage('This is ' + self.dName + '''s Destructor');
  inherited;
end;

var
  Pakkhom:  Dog;
  Gaolus:   Dog;

begin
  Pakkhom := Dog.Create('Pakkhom', 5);
  Pakkhom.Destroy;

  // Pointer Error Here
  Gaolus.Destroy;
  Gaolus := Dog.Create('Gaolus', 3);
end.
