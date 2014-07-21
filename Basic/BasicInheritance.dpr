{
  Pascal - inheritance
  Reference -> http://www.delphibasics.co.uk/Article.asp?Name=Inherit
}
program BasicInheritance;

uses
  FMX.Dialogs;

{$R *.res}
type

  //Every class inherit from TObject class
  //as same as Every java class inherit from
  //object class
  Human = class(TObject)
    Strict Private
      hName: String;
      hAge: Integer;

    published
      property Name: String read hName write hName;
      property Age: Integer read hAge write hAge;

    public
      procedure SayHello;
  end;

  //In Java ..
  //public class Student extends Human { ...
  Student = class(Human)
    Strict Private
      sFaculty: String;
      sStudentId: String;
      sUniversity: String;
      sOverallGrade: Single;

    published
      property Faculty: String read sFaculty write sFaculty;
      property StudentId: String read sStudentId write sStudentId;
      property OverallGrade: Single read sOverallGrade write sOverallGrade;

    public
      procedure UniversityRegis(University: String);
      procedure CheckStudentStatus;
  end;


{ Student }

procedure Student.CheckStudentStatus;
begin

  if self.sOverallGrade < 2.0 then
    ShowMessage('Retired')

  else if (Self.sOverallGrade >= 2.0)
    and (Self.sOverallGrade < 3.0) then
    ShowMessage('Good')

  else ShowMessage('Very Good');

end;

procedure Student.UniversityRegis(University: String);
begin

  self.sUniversity := University;
  ShowMessage(self.Name + ' entroll to ' + self.sUniversity);

end;


{ Human }

procedure Human.SayHello;
begin
  ShowMessage(self.hName + ' say Sawasdee');
end;


{ Main }
var
  Tony: Student;
  Anna: Student;
begin
  Tony := Student.Create;
  Tony.Name := 'Tony';
  Tony.Age := 19;

  Tony.UniversityRegis('Prince of Songkla University');
  Tony.Faculty := 'Department of Computer Engineering, Faculty of Engineer';

  Tony.OverallGrade := 3.2;
  Tony.CheckStudentStatus;

  //Why Tony can say Hello ?
  Tony.SayHello;

  Anna := Human.Create;
  //... Complete Anna
end.
