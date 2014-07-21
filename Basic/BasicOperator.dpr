{
  Pascal - Operator
  Reference -> http://www.delphibasics.co.uk/Article.asp?Name=Logic
            -> http://docwiki.embarcadero.com/RADStudio/XE5/en/Expressions_(Delphi)
}
program BasicOperator;

uses
  FMX.Dialogs, System.SysUtils;

{$R *.res}

begin

   if true And true
   then ShowMessage('true  and false = true');


   if true Or false
   then ShowMessage('true  or  false = true');


   if true Xor false
   then ShowMessage('true  xor false = true');


   if Not false
   then ShowMessage('not false  = true');

   ShowMessage(IntToStr(9 + 7));
   ShowMessage(IntToStr(9 - 7));
   ShowMessage(IntToStr(9 * 7));
   ShowMessage(FloatToStr(9 / 7));
   ShowMessage(IntToStr(9 div 7));
   ShowMessage(IntToStr(9 mod 7));

   //Advance bitwise
   //01000001 = A = #65

   //bitwise left result  10000010
   ShowMessage(IntToStr(65 shl 1));

   //bitwise right result 00100000
   ShowMessage(IntToStr(65 shr 1));
end.
