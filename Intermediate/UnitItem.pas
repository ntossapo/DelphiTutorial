unit UnitItem;

interface
type
  TItem = class
    strict private
      FName: String;
    public
      Constructor Create(const Name: String);
      destructor Destroy; override;
  end;
implementation

{ TItem }

uses
  FMX.Dialogs;

constructor TItem.Create(const Name: String);
begin
  inherited Create;
  FName := Name;
end;

destructor TItem.Destroy;
begin
  ShowMessage(FName + ' is being Destroyed..');
  inherited Destroy;
end;

end.
