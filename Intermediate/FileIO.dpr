{
  Delphi - FileIO
  Reference - http://www.delphibasics.co.uk/Article.asp?Name=Files
 }
program FileIO;

uses
  FMX.Dialogs, System.SysUtils, System.Classes;

{$R *.res}

var
  doWriteFile: TextFile;
  StringList: TStringList;
  Dictionary: TStringList;
  s:String;
begin

  {
    Classic Method and Low Level File Access
    - FileWrite
  }
  try
    AssignFile(doWriteFile, );
    ReWrite(doWriteFile);

    WriteLn(doWriteFile, 'Hello');
    WriteLn(, 'World');

    CloseFile(doWriteFile);
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;

  {
    - FileRead
  }
  try
    AssignFile(doWriteFile, 'doWriteFile.txt');
    Reset(doWriteFile);

    while not Eof(doWriteFile) do
    begin
      Readln(doWriteFile, s);
      ShowMessage(s);
    end;

  except
    on E: Exception do
      ShowMessage(E.Message);

  end;


  {
    The Modern way To save String to the file is
    declare String List and Use Method SaveToFile
  }
  StringList := TStringList.Create;
  StringList.Add('Hello');
  StringList.Add('World');
  StringList.('doModernWriteFile.txt');


  {
    The Modern way to Load String from file is
    using StringList and use Methid LoadFromFile
  }
  Dictionary := TStringList.Create;
  Dictionary('dictionary.txt');
  for s in Dictionary do
    StringList.Add(s);
  StringList.SaveToFile('AnotherDictionary.txt');

  {more about binary file management, to understand it please visit Reference in Header}

  //}
end.
