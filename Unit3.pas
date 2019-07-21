unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.WebBrowser,system.IOUtils,
  System.Actions, FMX.ActnList, FMX.StdActns, FMX.MediaLibrary.Actions;

type
  TForm3 = class(TForm)
    Button1: TButton;
    WebBrowser1: TWebBrowser;
    ActionList1: TActionList;
    Button2: TButton;
    ShowShareSheetAction1: TShowShareSheetAction;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
        uses Unit1;
{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TForm3.Button1Click(Sender: TObject);
begin
form1.Show;
Form3.Hide;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
{$IF  DEFINED(MSWINDOWS)}
WebBrowser1.Navigate(TPath.GetDocumentsPath + PathDelim + 'report.html');
{$ENDIF}
{$IF  DEFINED(ANDROID)}
 WebBrowser1.Navigate('file://'+TPath.GetDocumentsPath + PathDelim + 'report.html');
 {$ENDIF}
end;

end.
