unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Draw: Boolean;
  Is_Drawn: Boolean;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Draw:=False;
  Is_Drawn:=False;
  Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Draw:=True;
  Is_Drawn:=True;
  Image1.Canvas.Pixels[x, y] := clBlack;
  Image1.Canvas.MoveTo(x, y);
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Is_Drawn:=True;     
  Draw:=False;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Draw then
    Image1.Canvas.LineTo(x, y);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 if SaveDialog1.Execute then
   Image1.Picture.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin            

  if Is_Drawn <> False Then
    Begin
      if MessageDlg('Выйти Без сохранения?', mtConfirmation, [mbYes, mbCancel], 0) = mrYes Then
        close;
    End
    Else
      Begin
        close;
      End


end;

end.
