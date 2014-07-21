{
  Delphi
  Introduction to Delphi Collection
  -> TBits
  -> TList
  -> TObjectList
  -> TComponentList
  -> TStack
  -> TQueue
  -> TDictionary
  -> THashedStringList
  -> TStringList -> http://www.delphibasics.co.uk/RTL.asp?Name=TStringList
}

program Collection;

uses
  FMX.Dialogs,
  FMX.Forms,
  System.Classes,
  System.Generics.Collections,
  System.Contnrs,
  System.IniFiles,
  System.SysUtils,
  FMX.StdCtrls,
  FMX.Edit,
  UnitItem in 'UnitItem.pas',
  UnitTForm1 in 'UnitTForm1.pas' {Form1};

{$R *.res}

type
  Address = class(TItem)
    City: String;
    Country: String;

    Constructor Create(ci, co: String);
  end;

var
  Bit: TBits;
  List: TList<Integer>;
  ObjectList: TObjectList<Address>;
  ComponentList: TComponentList;
  Stack: TStack<Integer>;
  Queue: TQueue<Integer>;
  Dictionary: TDictionary<String, Integer>;
  HashedStringList: THashedStringList;
  StringList: TStringList;

  index: Integer;
  I: Integer;

  { Address }

constructor Address.Create(ci, co: String);
begin
  self.City := ci;
  self.Country := co;
end;

begin

  // Basic Using StringList*************
  {
    StringList := TStringList.Create;

    StringList.Add('Hello');
    StringList.Add(' ');
    StringList.Add('World');
    ShowMessage(StringList.Text);

    StringList.Delete(1);
    StringList[1] := 'mama';
    StringList.Append('papa');
    ShowMessage(StringList.Text);
    StringList.Clear;
  }


  // Basic Using HashedStringList***********
  {
    HashedStringList := THashedStringList.Create;

    HashedStringList.Add('Hello');
    HashedStringList.Add(' ');
    HashedStringList.Add('World');
    ShowMessage(HashedStringList.Text);

    if HashedStringList.Find('World', index) then
    ShowMessage('@Element ' + IntToStr(index) + ', we have ''World'' in '
    + HashedStringList[index]);

    HashedStringList.Exchange(0, 2);
    ShowMessage(HashedStringList.Text);
    HashedStringList.Sorted := True;
    ShowMessage(HashedStringList.Text);

    ShowMessage(HashedStringList.CommaText);
  }


  // Basic Using Dictionary**************
  {
    Dictionary := TDictionary<String, Integer>.Create;

    Dictionary.Add('One', 1);
    Dictionary.Add('Two', 2);
    Dictionary.Add('Three', 3);
    ShowMessage(IntToStr(Dictionary['one']));
    ShowMessage(IntToStr(Dictionary['two']));
  }


  // Basic Using Queue******************
  {
    Queue := TQueue<Integer>.Create;

    for I := 0 to 5 do
    begin
    ShowMessage('Enqueue' + IntToStr(I))
    Queue.Enqueue(I);
    end;

    for I := 0 to 5 do
    ShowMessage('Dequeue' + IntToStr(Queue.Dequeue));
  }


  // Basic Using Stack*******************
  {
    Stack := TStack<Integer>.Create;
    for I := 0 to 5 do
    begin
    Stack.Push(I);
    ShowMessage('Push ' + IntToStr(I));
    end;

    for I := 0 to 5 do
    ShowMessage('Pop ' + IntToStr(Stack.Pop));
  }


  // Basic Using ComponentList (FMX)*************
  {
    Application.Initialize;

    ComponentList := TComponentList.Create;

    ComponentList.Add(TForm1.Create(nil));
    ComponentList.Add(TForm1.Create(nil));

    (ComponentList.Items[0] as TForm1).Label1.Text
    := 'This is TForm1 @ ' + IntToStr(0);

    (ComponentList.Items[1] as TForm1).Label1.Text
    := 'This is TForm1 @ ' + IntToStr(1);

    (ComponentList.First as TForm1).Show;
    (ComponentList as TForm1).Show;

    Application.Run;
  }


  // Basic Using ObjectList**************
  {
    ObjectList := TObjectList<Address>.Create();

    ObjectList.Add(Address.Create('Hat yai', 'Thailand'));
    ObjectList.Add(Address.Create('Bang Khun Tian', 'Thailand'));

    ShowMessage(
    (ObjectList.Items[0] as Address).City + #10
    + (ObjectList.Items[0] as Address).Country
    );

    ShowMessage(
    (ObjectList.Items[1] as Address).City + #10
    + (ObjectList.Items[1] as Address).Country
    );

    ObjectList.Reverse;

    ShowMessage(ObjectList[0]);
    ShowMessage(ObjectList[1]);
  }


  // Basic Using TList
  {
    List := TList<Integer>.Create;

    for I := 0 to 10 do
    List.Add(I);

    for I := 0 to 10 do
    ShowMessage(IntToStr(I));

    List.Insert();
    List.AddRange();
  }

  // Basic using TBits
  {
    Bit := TBits.Create;
    Bit.Size := 8;
    Bit.Bits[0] := False;
    Bit.Bits[1] := False;
    Bit.Bits[2] := False;
    Bit.Bits[3] := False;
    Bit.Bits[4] := True;
    Bit.Bits[5] := False;
    Bit.Bits[6] := True;
    Bit.Bits[7] := ;

    for I := 0 to 7 do
    if Bit[I] = True then
    ShowMessage('Byte[' + IntToStr(I) + '] = True')
    else
    ShowMessage('Byte[' + IntToStr(I) + '] = False');
  }

end.
