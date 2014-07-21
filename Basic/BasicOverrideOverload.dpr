{
  Introduce Override Overload in Pascal

  Reference
  virtual -> http://www.delphibasics.co.uk/RTL.asp?Name=Virtual
  dynamic -> http://www.delphibasics.co.uk/RTL.asp?Name=Dynamic
  overload -> http://www.delphibasics.co.uk/RTL.asp?Name=Overload
  override -> http://www.delphibasics.co.uk/RTL.asp?Name=override

  what is this ?
  -> http://www.narisa.com/forums/index.php?showtopic=8265 (TH)
  -> http://javarevisited.blogspot.com/2011/12/method-overloading-vs-method-overriding.html
  -> http://beginnersbook.com/2014/01/difference-between-method-overloading-and-overriding-in-java/ (recommend)

  how it different between virtual and dynamic
  Virtual is semantically equivalent to Dynamic. The former is optimised for speed, the latter for memory,
  Dynamic is semantically equivalent to Virtual. The former is optimised for memory, the latter for speed.program BasicOverrideOverload;
}

program BasicOverrideOverload;

uses
FMX.Dialogs;

{$R *.res}

type
  Human = class
    procedure SayHello; overload; virtual;      // or dynamic // <- virtual, dynamic keyword mean this method can override
    procedure SayHello(Name: String); overload; // <- overload keyword mean this is overload method
  end;

{ Human }

procedure Human.SayHello;
begin
  ShowMessage('Booboo');
end;

procedure Human.SayHello(Name: String);
begin
  ShowMessage('Booboo ' + Name);
end;

type
  Thai = class(Human)
    procedure SayHello; override;
    procedure SayHello(Name:String ); override;
  end;

{ Thai }

procedure Thai.SayHello;
begin
  ShowMessage('Sawasdee');
end;

procedure Thai.SayHello(Name: String);
begin
  ShowMessage('Sawasdee ' + Name);
end;



{ Main }
var
  Fred: Human;
  Boy: Thai;
begin
  Fred := Human.Create;
  Boy := Thai.Create;

  Fred.SayHello;
  Fred.SayHello('Boy');

  Boy.SayHello;
  Boy.SayHello('Fred');
end.

