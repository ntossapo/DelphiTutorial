program RegularEx;

uses
  FMX.Forms,
  FormEmail in 'FormEmail.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
