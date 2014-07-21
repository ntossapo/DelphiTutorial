{
  Delphi - Nested Type(Inner class)
  Reference -> http://docwiki.embarcadero.com/RADStudio/XE4/en/Nested_Type_Declarations
}
program NestedTypeInnerClass;

uses
  FMX.Dialogs, System.Generics.Collections, System.SysUtils;

{$R *.res}
Type
  Subject = class
    Strict Private
      sName: String;
      sGrade: String;
    public
      property Name: String read sName write sName;
      property Grade: String read sGrade write sGrade;

      Constructor Create(Name, Grade: String);
  end;


  Student = class
    strict private
      sFirstName: String;
      sLastName: String;

    public type                       // <- Here is Nested Type
      {OverallResult = class
      strict private
          function calcGrade: Double;
        public
          //SubjectList: TList<Subject>;
          property OverallGrade: Double read calcGrade;
          Constructor Create;
      end;}

    public
      Overall: OverallResult;

      property Firstname: String read sFirstName write sFirstName;
      property LastName: String read sLastName write sLastName;

      ConStructor Create(Firstname, Lastname: String);
  end;

{ Subject }

constructor Subject.Create(Name, Grade: String);
begin
  self.sName := Name;
  self.sGrade := Grade;
end;

{ Student.OverallResult }

function Student.OverallResult.calcGrade: Double;
var
  sum: Double;
  I: Integer;
begin
  sum := 0;
  for I := 0 to self.SubjectList.Count - 1 do
  begin
    if(self.SubjectList.Items[I].Grade = 'A') then
      sum := sum + 4
    else if (self.SubjectList.Items[I].Grade = 'B+') then
      sum := sum + 3.5
    else if (self.SubjectList.Items[I].Grade = 'B') then
      sum := sum + 3
    else if (self.SubjectList.Items[I].Grade = 'C+') then
      sum := sum + 2.5
    else if (self.SubjectList.Items[I].Grade = 'C') then
      sum := sum + 2
    else if (self.SubjectList.Items[I].Grade = 'D+') then
      sum := sum + 1.5
    else if (self.SubjectList.Items[I].Grade = 'D') then
      sum := sum + 1
  end;

  Result := sum / self.SubjectList.Count;
end;

constructor Student.OverallResult.Create;
begin
  self.SubjectList := TList<Subject>.create;
end;

{ Student }

constructor Student.Create(Firstname, Lastname: String);
begin
  self.Overall := OverallResult.Create;
  self.sFirstName := Firstname;
  self.sLastName := LastName;
end;

var
  Tossapon: Student;
begin
  Tossapon := Student.Create('Tossapon', 'Nuanchuay');
  Tossapon.Overall.SubjectList.Add(Subject.Create('OOP', 'A'));
  Tossapon.Overall.SubjectList.Add(Subject.Create('ComProgTech', 'C+'));
  Tossapon.Overall..Add()
  ShowMessage(
  Tossapon.Firstname + #10 +
  'Overall Grade : ' + FloatToStr(Tossapon.Overall.OverallGrade)
  );

end.
