unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TForm4 = class(TForm)
    Label10: TLabel;
    Label11: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
    a,b,c, bal: real;
    op:Char;
    count:Integer;
implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

procedure TForm4.SpeedButton11Click(Sender: TObject);
begin
   if count=0 then
          begin
 Label10.Text:=label10.Text+'7';
 a:=StrToFloat(label10.Text);
 Label11.Text:=FloatToStr(b);
    end ;
  if count>=1 then Label10.Text:=Label10.Text+'7';
end;

procedure TForm4.SpeedButton12Click(Sender: TObject);
begin
    if count=0 then
          begin
 Label10.Text:=label10.Text+'8';
 a:=StrToFloat(label10.Text);
 Label11.Text:=FloatToStr(b);
    end ;
  if count>=1 then Label10.Text:=Label10.Text+'8';

end;

procedure TForm4.SpeedButton13Click(Sender: TObject);
begin
   if count=0 then
          begin
 Label10.Text:=label10.Text+'9';
 a:=StrToFloat(label10.Text);
 Label11.Text:=FloatToStr(b);
    end ;
  if count>=1 then Label10.Text:=Label10.Text+'9';
end;

procedure TForm4.SpeedButton14Click(Sender: TObject);
begin
 if count=0 then
          begin
 Label10.Text:=label10.Text+'0';
 a:=StrToFloat(label10.Text);
 Label11.Text:=FloatToStr(b);
    end ;
  if count>=1 then Label10.Text:=Label10.Text+'0';
end;

procedure TForm4.SpeedButton15Click(Sender: TObject);
begin
   if count=0 then
          begin
 Label10.Text:=label10.Text+'.';
 a:=StrToFloat(label10.Text);
 Label11.Text:=FloatToStr(b);
    end ;
  if count>=1 then Label10.Text:=Label10.Text+'.';
end;

procedure TForm4.SpeedButton16Click(Sender: TObject);
begin
if op='+' then
  begin
   a:=StrToFloat(Label10.Text);
   b:=StrToFloat(Label11.Text);
    c:=a+b;
   label10.Text:=FloatToStr(c);
  end;
  if op='-' then
  begin
   a:=StrToFloat(Label11.Text);
   b:=StrToFloat(Label10.Text);
    c:=a-b;
   label10.Text:=FloatToStr(c);
  end;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
Label10.Text:='';
Label11.Text:='';
a:=0;
b:=0;
c:=0;
count:=0;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
  if count=0 then
          begin
 Label10.Text:=label10.Text+'1';
 a:=StrToFloat(label10.Text);
 Label11.Text:=FloatToStr(b);
    end ;
  if count>=1 then Label10.Text:=Label10.Text+'1';
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
begin
  if count=0 then
          begin
 Label10.Text:=label10.Text+'2';
 a:=StrToFloat(label10.Text);
 Label11.Text:=FloatToStr(b);
    end ;
  if count>=1 then Label10.Text:=Label10.Text+'2';
end;

procedure TForm4.SpeedButton4Click(Sender: TObject);
begin
 if count=0 then
          begin
 Label10.Text:=label10.Text+'3';
 a:=StrToFloat(label10.Text);
 Label11.Text:=FloatToStr(b);
    end ;
  if count>=1 then Label10.Text:=Label10.Text+'3';
end;

procedure TForm4.SpeedButton5Click(Sender: TObject);
begin
  if count=0 then
          begin
 Label10.Text:=label10.Text+'4';
 a:=StrToFloat(label10.Text);
 Label11.Text:=FloatToStr(b);
    end ;
  if count>=1 then Label10.Text:=Label10.Text+'4';
end;

procedure TForm4.SpeedButton6Click(Sender: TObject);
begin
 if count=0 then
          begin
 Label10.Text:=label10.Text+'5';
 a:=StrToFloat(label10.Text);
 Label11.Text:=FloatToStr(b);
    end ;
  if count>=1 then Label10.Text:=Label10.Text+'5';
end;

procedure TForm4.SpeedButton7Click(Sender: TObject);
begin
 if count=0 then
          begin
 Label10.Text:=label10.Text+'6';
 a:=StrToFloat(label10.Text);
 Label11.Text:=FloatToStr(b);
    end ;
  if count>=1 then Label10.Text:=Label10.Text+'6';
end;

procedure TForm4.SpeedButton8Click(Sender: TObject);
begin
 Label11.Text:=Label10.Text;
   op:='+';

 inc(count);
  if count=1 then          label10.Text:='';
 if count>1 then
   begin
   b:=StrToFloat(Label10.Text);
   c:=a+b;
 Label10.Text:=FloatToStr(c);
  end;
end;

procedure TForm4.SpeedButton9Click(Sender: TObject);
begin
  Label11.Text:=Label10.Text;
   op:='-';

 inc(count);
  if count=1 then          label10.Text:='';
 if count>1 then
   begin
   b:=StrToFloat(Label10.Text);
   c:=a-b;
 Label10.Text:=FloatToStr(c);
   end;
end;

end.
