{
  Pascal - Interface
  reference -> http://www.delphibasics.co.uk/Article.asp?Name=Interface
}
program BasicInterface;

uses
  FMX.Dialogs;

{$R *.res}

type
  DogInterface = interface(IInterface)
    procedure Bark; overload;
    procedure Bark(times: Integer); overload;
    procedure Bite;
  end;

  Dog = class(TInterfacedObject, DogInterface)
    procedure Bark; overload;
    //..
  end;



{ Dog }


procedure Dog.Bark;
begin
  ShowMessage('Bark!! Bark!!');
end;


var
  Pakkhom: Dog;

begin
  Pakkhom := Dog.Create;
  Pakkhom.Bark;
  Pakkhom.Bite;

end.
