{
  Pascal - Set and Enum;
  more detail here -> http://www.delphibasics.co.uk/Article.asp?Name=Sets
 }
program BasicEnums;

uses
  FMX.Dialogs;

Type
  TEnumDay  //<- Enum
    = (Thuesday=14, Friday, Saturday, Sunday
    , Monday = 10, Tuesday, Wednesday);

  FabruaryDay = 1..29;// <- Sub Range
var
  Today: TEnumDay = Monday;
  Holiday: set of TEnumDay = [Sunday, Saturday]; // <- Set

  Day: FabruaryDay;

begin
  if (Today <> Sunday) or (Today <> Saturday) then
    ShowMessage('Today isn''t holiday');

  if Today in Holiday then
    ShowMessage('Today is holiday');

  if Sunday < Thuesday then
    ShowMessage('Sunday come before');

  Day := 30;  //ERROR 30 isn't member in FabruaryDay
  Day := 29;  //ALLOW

  ShowMessage('Program run completely');
end.

