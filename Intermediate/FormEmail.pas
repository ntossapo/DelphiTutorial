unit FormEmail;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  System.RegularExpressions, FMX.Edit;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.Button1Click(Sender: TObject);
var
  regexpr:  TRegEx;
  match:    TMatch;
begin
  regexpr := TRegEx.Create('\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b'
  , [roIgnoreCase, roSingleLine]);
  match := regexpr.Match(edit1.Text);

  if not match.Success then
    ShowMessage('It''s not email')
  else
    ShowMessage('it''s email');
end;

end.
