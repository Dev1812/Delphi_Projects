unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    IdHTTP1: TIdHTTP;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  try
   Memo1.Lines.Clear;
   Memo1.Lines.Add(IdHTTP1.Get('http://google.ru/'));
  except
   Memo1.Lines.Clear;
   Memo1.Color:=clRed;
   Memo1.Lines.Add('Error');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Close;
end;


end.
