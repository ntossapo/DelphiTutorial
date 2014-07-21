{
  Pascal - Array
  Reference -> http://www.delphibasics.co.uk/Article.asp?Name=Arrays
 }
program BasicArray;

uses
  FMX.Dialogs,
  System.SysUtils;

{$R *.res}
var
  IntegerDArray: array of Integer;       //<- Dynamic Array
  IntegerFArray: array[2..3] of Integer; //<- Fixed Element Array (2-3)

  //Multi Dimention Array 3x3
  IntegerMultiDiArray: array[0..2] of array[0..2] of Integer;

  I, J: Integer;

  vowel: array[0..4] of char = ('a', 'e', 'i', 'o', 'u');

  s: String;
begin
  //Set Dynamic Array Element Count
  //SetLength(IntegerDArray, {Array Elemnt Count .. here});

  //Initial Array Value
  IntegerDArray[0] := 0;
  //...

  //Show All Value in IntegerDArray
  for I := 0 to Length(IntegerDArray)-1 do
  begin
    s := s + ', ' + IntToStr(IntegerDArray[I]);
  end;
  ShowMessage(s);
  s := '';


  //Initilaize Array Value
  IntegerFArray[0] := 0;
  //...
  IntegerFArray[3] := 3;

  //Show All Value in IntegerFArray
  for I := 0 to 3 do
  begin
    s := s + ', ' + IntToStr(IntegerFArray[{...}]);
  end;
  ShowMessage(s);
  s := '';


  for I := 0 to 2 do
    for J := 0 to 2 do
      IntegerMultiDiArray[I, J] = I + J;

  for I := 0 to 2 do
  begin

    for J := 0 to 2 do
      s := s + IntegerMultiDiArray[I, J] + ' ';

    s := s + #10;
  end;
  ShowMessage(s);


  ShowMessage(vowel[0]);

  ShowMessage('End of Program');
end.
