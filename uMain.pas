unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    PanHead: TPanel;
    labNro: TLabel;
    panNro1: TPanel;
    Shape1: TShape;
    pan9: TPanel;
    Shape2: TShape;
    Panel2: TPanel;
    Shape3: TShape;
    Panel3: TPanel;
    Shape4: TShape;
    Panel4: TPanel;
    Shape5: TShape;
    Panel5: TPanel;
    Shape6: TShape;
    Panel6: TPanel;
    Shape7: TShape;
    Panel8: TPanel;
    Shape9: TShape;
    Panel9: TPanel;
    Shape10: TShape;
    Panel7: TPanel;
    Shape8: TShape;
    Panel11: TPanel;
    Shape12: TShape;
    Panel1: TPanel;
    Shape11: TShape;
    Panel10: TPanel;
    Shape13: TShape;
    Panel12: TPanel;
    Shape14: TShape;
    Panel13: TPanel;
    Shape15: TShape;
    Panel14: TPanel;
    Shape16: TShape;
    Panel15: TPanel;
    Shape17: TShape;
    labOper: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Image1: TImage;
    Panel16: TPanel;
    Panel17: TPanel;
    Label1: TLabel;
    Bevel4: TBevel;
    Label2: TLabel;
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Shape11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape12MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape13MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape17MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape14MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape15MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape16MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel17Click(Sender: TObject);
  private
    { Private declarations }
    lStatus : Word;
    LNum1   : Real;
    LNum2   : Real;
    lResult : Real;
    lOper   : Word;
    Procedure AddChar(pCad:String);
    Procedure SetToZero;
    Procedure MyOps;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

{ TForm3 }

procedure TForm3.AddChar(pCad: String);
begin
  // Check Length
    if length(labNro.Caption) >= 8 then
      Exit;

  // Add
    labNro.Caption := LabNro.Caption +pCad;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  // initialize variables
    SetToZero;
end;

procedure TForm3.MyOps;
begin
end;

procedure TForm3.Panel17Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.SetToZero;
begin
  lStatus         := 1;
  lNum1           := 0;
  lNum2           := 0;
  lOper           := 0;
  labNro.Caption  := '';
  labOper.Caption := '';
end;

procedure TForm3.Shape10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  AddChar('1');
end;

procedure TForm3.Shape11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SetToZero;
end;

procedure TForm3.Shape12MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  AddChar('.');
end;

procedure TForm3.Shape13MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // Verify Status
    if lStatus <> 1 then
      Exit;

  // Cconvert input from GUI into a real number
    lNum1 := StrToFloat(labNro.Caption);
    lOper := 1;

    // Clear label
    labOper.Caption := labNro.Caption+'/';
    labNro.Caption  := '';
    Inc(lStatus);
end;

procedure TForm3.Shape14MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // Verify Status
    if lStatus <> 1 then
      Exit;

  // Cconvert input from GUI into a real number
    lNum1 := StrToFloat(labNro.Caption);
    lOper := 2;

    // Clear label
    labOper.Caption := labNro.Caption+'x';
    labNro.Caption  := '';
    Inc(lStatus);
end;

procedure TForm3.Shape15MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    // Verify Status
    if lStatus <> 1 then
      Exit;

  // Cconvert input from GUI into a real number
    lNum1 := StrToFloat(labNro.Caption);
    lOper := 3;

    // Clear label
    labOper.Caption := labNro.Caption+'+';
    labNro.Caption  := '';
    Inc(lStatus);
end;

procedure TForm3.Shape16MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    // Verify Status
    if lStatus <> 1 then
      Exit;

  // Cconvert input from GUI into a real number
    lNum1 := StrToFloat(labNro.Caption);
    lOper := 4;

    // Clear label
    labOper.Caption := labNro.Caption+'-';
    labNro.Caption  := '';
    Inc(lStatus);
end;

procedure TForm3.Shape17MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    // Verify Status
    if lStatus <> 2 then
      Exit;

  // Operations
    lNum2 := StrToFloat(labNro.Caption);
    case lOper of
      1 : Begin
             if lNum2 <> 0 then
               Begin
                 labNro.Caption  := FormatFloat('###,##0.00',lNum1/lNum2);
                 labOper.Caption := FloatToStr(lNum1)+'/'+FloatToStr(lNum2)+'='+FormatFloat('###,##0.00',lNum1/lNum2);
               End
             Else
               labNro.Caption  := 'ERROR';
          End;
      2 : Begin
            labNro.Caption  := FormatFloat('###,##0.00',lNum1*lNum2);
            labOper.Caption := FloatToStr(lNum1)+'X'+FloatToStr(lNum2)+'='+FormatFloat('###,##0.00',lNum1*lNum2);
          End;
      3 : Begin
            labNro.Caption  := FormatFloat('###,##0.00',lNum1+lNum2);
            labOper.Caption := FloatToStr(lNum1)+'+'+FloatToStr(lNum2)+'='+FormatFloat('###,##0.00',lNum1+lNum2);
          End;
      4 : Begin
            labNro.Caption  := FormatFloat('###,##0.00',lNum1-lNum2);
            labOper.Caption := FloatToStr(lNum1)+'-'+FloatToStr(lNum2)+'='+FormatFloat('###,##0.00',lNum1-lNum2);
          End;

    end;
    lStatus := 3;
end;

procedure TForm3.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if lStatus = 3 then
    SetToZero;

  AddChar('3');
end;

procedure TForm3.Shape2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if lStatus = 3 then
    SetToZero;

  AddChar('9');
end;

procedure TForm3.Shape3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if lStatus = 3 then
    SetToZero;
  AddChar('8');
end;

procedure TForm3.Shape4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if lStatus = 3 then
    SetToZero;

  AddChar('7');
end;

procedure TForm3.Shape5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if lStatus = 3 then
    SetToZero;

  AddChar('6');
end;

procedure TForm3.Shape6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if lStatus = 3 then
    SetToZero;

  AddChar('5');
end;

procedure TForm3.Shape7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if lStatus = 3 then
    SetToZero;

  AddChar('4');
end;

procedure TForm3.Shape8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if lStatus = 3 then
    SetToZero;

  AddChar('0');
end;

procedure TForm3.Shape9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if lStatus = 3 then
    SetToZero;

  AddChar('2');
end;

end.
