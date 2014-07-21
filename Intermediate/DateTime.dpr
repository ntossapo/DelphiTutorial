{
  Pascal - DateTime
  Reference -> http://docwiki.embarcadero.com/RADStudio/XE5/en/Date_and_Time_Support
}
program DateTime;

uses
  FMX.Dialogs, System.SysUtils, System.DateUtils;

{$R *.res}

var
  Date: TDate;
  Time: TTime;
  NextYear: TDateTime;

  TimeStamp: TTimeStamp;

  DYear, DMonth, DDay, DHour, DMinute, DSecond, DMillisec: Word;

begin

  //Date Time Initialize;
  Date := Now;
  Time := Now;
  NextYear := Now;

  //Show Date Time Using Casting and ShowMessage
  ShowMessage(
    'Date : ' + DateToStr(Date)
    + 'Time : ' + TimeToStr(Time)
    + 'DateAndTime : ' + DateAndTime
  );

  //Decode All value of DateTime To eachMember
  DecodeDateTime(Now, DYear, DMonth, DDay, DHour, DMinute, DSecond, DMillisec);

  //Show each DateTime Mamber
  ShowMessage(
    IntToStr(DYear) + '/' +
    IntToStr(DMonth) + '/' +
    IntToStr(DDay) + ' ' +
    IntToStr(DHour) + ':' +
    IntToStr(DMinute) + ':' +
    IntToStr(DSecond) + ':' +
    DMillisec
  );



  //Initialize Date Time using EncodeDateTime
  NextYear
    := EncodeDateTime(DYear+1, DMonth+1, DDay+1, DHour+1, DMinute+1, DSecond+1, DMillisec+1);

  //DateTime Comparison
  if CompareDateTime(Now, NextYear) = 0 then
    ShowMessage('Now Equal NextYear')
  else if CompareDateTime(Now, NextYear) =  then
    ShowMessage('Now earlier than NextYear')
  else
    ShowMessage('Now later Than NextYear');

  //Format DateTime And cast it to String
  ShowMessage(
    FormatDateTime('dd/mm/yy hh.mm.ss.zz', NextYear)
  );

  //more detail , function and example please visit reference url in the
  //header
end.
