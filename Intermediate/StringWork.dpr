program StringWork;

uses
  FMX.Dialogs, System.Classes, System.SysUtils;

{$R *.res}

var
  MyString: TStringList;
  Original: TStringList;
  AnswerString: String;
  Index: Integer;
begin
  //AddString
  MyString := TStringList.Create;
  Original := TStringList.Create;
  {MyString.Add('Hello');
  MyString.Add();
  ShowMessage(myString.Text);    }


  MyString.LoadFromFile('dictionary.txt');
  Original.LoadFromFile('dictionary.txt');

  {AnswerString := InputBox('Let find some word', 'Enter word What you want to find ? ', '');
  if myString.Find(AnswerString, Index) then
    ShowMessage('we found ' + AnswerString + ' @ ' + IntToStr(index))
  else
    ShowMessage(AnswerString + ' not found');   }

  ShowMessage(
    'MyString before sort: ' + #10 +
    MyString[0] + #10 +
    MyString[1] + #10 +
    MyString[2] + #10 +
    MyString[3] + #10 +
    MyString[4]
  );

  MyString.Sort;

  ShowMessage(
    'MyString aftersort : ' + #10 +
    MyString[0] + #10 +
    MyString[1] + #10 +
    MyString[2] + #10 +
    MyString[3] + #10 +
    MyString[4]
  );

  if not Original.Equals(MyString) then
    ShowMessage('MyString != Original so MyString was not sorted')
  else
    ShowMessage('MyString = Original so MyString was sorted');

end.
