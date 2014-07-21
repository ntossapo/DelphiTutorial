{
  Introduce Try Except Finally
  Syntax :->

  try
    (statement)
  except
    on E:(Exception class) do
    begin
      (what you want to do if Program catch the exception)
    end
  finally
    (if program run completely, what you want to do last, mostly free memory)
  end;

  raise keyword detail & Example
    -> http://www.delphibasics.co.uk/RTL.asp?Name=Raise

  try except finally keyword
    more detail and Example
    -> http://www.delphibasics.co.uk/Article.asp?Name=Exceptions

 }

program BasicException;

uses
  System.Classes,
  System.SysUtils,
  FMX.Dialogs;


{$R *.res}
var
  sl: TStringList;
  s: String;
begin
  sl := TStringList.Create;

  //try

    sl.LoadFromFile('textfile.txt');   //<- Point to null here

  //except

  //  On E: Exception do
  //    sl.Add('Hello')

  //end;


  for s in sl do
  begin
    ShowMessage(s);
  end;

end.
