{
  Pascal - String
  Reference -> http://www.delphibasics.co.uk/Article.asp?Name=Text
}
program BasicString;

uses
  FMX.Dialogs, System.SysUtils;

{$R *.res}

var
  SomeString: String;
  AnotherString: String;
  LimitString: String[2]; // <- maximum 2 character
begin

  //Simple String initialize
  SomeString := 'Sawasdee';
  LimitString := 'Sawasdee';

  ShowMessage(LimitString);

  //Simple Access to each element of string
  SomeString[2] := 'b';
  SomeString[5] := 'i';
  SomeString[20] := 'n';

  ShowMessage(SomeString);

  //Get String Length
  ShowMessage(IntToStr(Length(SomeString)));

  //String Concatenation
  ShowMessage(SomeString + ' and ' + LimitString);

  //Simple String Operator
  if 'A' <> 'B' then
    ShowMessage('A <> B');


  //Simple String processing routines

  //Copy
  AnotherString := Copy(SomeString, 2, 6);
  ShowMessage(AnotherString);

  //Insert
  Insert('BooBooo ', AnotherString, 2);
  ShowMessage(AnotherString);

  //Delete
  Delete(AnotherString, 3, 5);
  ShowMessage(AnotherString);

  AnotherString := 'This is a way to live A big life';

   // Target set to 'This is THE way to live THE big life'
  AnotherString := StringReplace(AnotherString, ' a ', ' THE ',
                           [rfReplaceAll, rfIgnoreCase]);
  ShowMessage(AnotherString);

end.
