program Project1;

uses
  Forms,
  Unit1 in '..\Project_3\Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'HTTP_test';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
