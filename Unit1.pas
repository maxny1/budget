unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,FMX.Objects,system.IOUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef,
  FireDAC.FMXUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.SQLite, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Edit, FMX.ScrollBox, FMX.Memo, FireDAC.FMXUI.Error,
  FMX.ListBox, FireDAC.Comp.BatchMove, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP,IdMultipartFormData,
  FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove.Text, System.Rtti,
  FMX.Grid.Style, FMX.Grid, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.Layouts,System.Threading,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.DateTimeCtrls,system.DateUtils, Unit2,iduri,
  System.ImageList, FMX.ImgList, FMX.Media,math, System.Actions, FMX.ActnList,
  FMX.StdActns, FMX.MediaLibrary.Actions, IdMessage,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,FMX.DIALOGSERVICE,IdSSLOpenSSLHeaders,fmx.platform,
  FMX.ExtCtrls, FMX.TabControl, FMX.Gestures, FMX.TreeView,System.StrUtils,
  FMX.WebBrowser, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent,system.json,system.android.service,JOSE.Builder, JOSE.Core.JWT, JOSE.Types.JSON,
  JOSE.Types.Bytes, JOSE.Consumer, JOSE.Consumer.Validators, JOSE.Core.Base, JOSE.Core.JWA, JOSE.Core.JWK, JOSE.Context,
   JOSE.Core.Builder, JOSE.Core.JWA.Compression, JOSE.Core.JWS, JOSE.Core.JWA.Signing, JOSE.Core.JWA.Encryption, JOSE.Signing.RSA,
   JOSE.Encoding.Base64, JOSE.Core.JWA.Factory, JOSE.Core.JWE, JOSE.Core.Parts, JOSE.Hashing.HMAC, JOSE.Types.Arrays,IntentServiceUnit ;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDCommand1: TFDCommand;
    Edit1: TEdit;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    Label1: TLabel;
    Button1: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit2: TEdit;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    Button4: TButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button5: TButton;
    FDBatchMove1: TFDBatchMove;
    IdHTTP1: TIdHTTP;
    FDBatchMoveTextReader1: TFDBatchMoveTextReader;
    FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter;
    FDTable1: TFDTable;
    ListView1: TListView;
    DateEdit1: TDateEdit;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    CheckBox1: TCheckBox;
    Button6: TButton;
    ListBox1: TListBox;
    Button7: TButton;
    ImageList1: TImageList;
    ImageControl1: TImageControl;
    ComboBox3: TComboBox;
    MediaPlayer1: TMediaPlayer;
    RadioButton5: TRadioButton;
    Button8: TButton;
    Label4: TLabel;
    Button9: TButton;
    RadioButton6: TRadioButton;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    Switch1: TSwitch;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    DataSource1: TDataSource;
    FDEventAlerter1: TFDEventAlerter;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Edit5: TEdit;
    Label5: TLabel;
    Button10: TButton;
    GestureManager1: TGestureManager;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    DateEdit4: TDateEdit;
    Edit8: TEdit;
    GroupBox2: TGroupBox;
    Image1: TImage;
    SpeedButton10: TSpeedButton;
    Button11: TButton;
    ComboBox2: TComboBox;
    Edit12: TEdit;
    Button12: TButton;
    Edit13: TEdit;
    Edit14: TEdit;
    Button13: TButton;
    WebBrowser1: TWebBrowser;
    Edit15: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    ListView2: TListView;
    ListView3: TListView;
    Button14: TButton;
    Memo2: TMemo;
    Button15: TButton;
    Label12: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Button16: TButton;

    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

    procedure Label1Click(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure FDConnection1AfterConnect(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ListView1UpdateObjects(const Sender: TObject;
      const AItem: TListViewItem);
    procedure CheckBox1Change(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure ListView1DeleteItem(Sender: TObject; AIndex: Integer);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Switch1Switch(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3ChangeTracking(Sender: TObject);
    procedure FDTable1BeforeInsert(DataSet: TDataSet);
    procedure Button10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ListView1Gesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ListView1DblClick(Sender: TObject);
    procedure TabItem3Click(Sender: TObject);

    procedure SpeedButton10Click(Sender: TObject);
    procedure TabItem2Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure WebBrowser1DidFinishLoad(ASender: TObject);
    procedure ListView2ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListView3ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox1Gesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure Label3Gesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure Button16Click(Sender: TObject);


  private
    { Private declarations }
    fservice:TLocalServiceConnection;
  public
    { Public declarations }
  end;
const
pd_client_id='"5ba644f2aaddb00012d6084b"';
pd_public_key='"65d16b31688f354a854497204184fd"';
pd_secret_sand='"9243afc7bc842f0ecd8bfea830fc63"';
pd_secret_dev='"ceabc71bd22d75de8e60f2a68e56a3"';

var
  Form1: TForm1;
  email,f,f1:TextFile;
  id,devid:string;
 a,b,c, bal: real;
  act,seting,business:SmallInt;
  trnid,count:Integer;
  result:TMemoryStream;
  itm,itmh,itmh1,lv2,lv3:TListviewItem;
  calc: byte;
  amount: real;
  Password,emailinfo:string;
  trnidlist,setting,plaid,plaid_date:TStringList;
   ret:string;
   dirlist:TStringDynArray;
   dirarraysize,i,cat:Integer;
   treeitem:TTreeViewItem;
  dirpath: string;
  op:Char;
  inst_user,inst_pass,i_id,server:string;
  version: string;
  verstr,access_token,public_token,custom: string;
 pd_acc_id,pd_res,pd_date,extra:string;
 ltoken:TJWS;
 lintent:TIntentServiceHelper;
 implementation
    {$IFDEF MSWINDOWS}
   uses
   Unit3,Unit4;
   {$ENDIF}
   {$IFDEF ANDROID}
   uses
   Unit3,Unit4,androidapi.JNI.JavaTypes,Androidapi.JNI.Graphicscontentviewtext,FMX.HELPERS.ANDROID,Androidapi.Helpers;
   {$ENDIF}
{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}

procedure TForm1.Button10Click(Sender: TObject);
   var
   res:string;
begin
 res:=IdHTTP1.Get('http://budget123.000webhostapp.com/c_t.php?param2=11');
    setting.Text:=res;
     server:=setting.Values['server'];
 ret:= IdHTTP1.Get(server+'c_t.php?param2=9&email='+tiduri.ParamsEncode(edit5.Text));
if ret<>'' then
begin

   setting.Text:=ret;
    Edit2.Text:=setting.Values['id'];
    devid:=setting.Values['devid'];
    id:=setting.Values['id'];

end;

end;

procedure TForm1.Button11Click(Sender: TObject);
var
userjson,jsonsend:TStringStream;
jsarr:TJSONArray;
jspair:TJSONPair;
jsobj,jsobj1:TJSONObject;
jsval:TJSONValue;

us, th_id,start_date,end_date,s,s1,s2,s3:string;
response_json:string;
sparse,param2,temp,temp1:TStringList;
lis,lish:TListViewItem;

begin
plaid_date:=TStringList.Create;
plaid_date.Duplicates:=dupAccept;
sparse:=TStringList.Create;
param2:=TStringList.Create;
temp:=TStringList.Create;
param2.Delimiter:='}';
param2.NameValueSeparator:=':';
param2.StrictDelimiter:=True;
temp.NameValueSeparator:=':';
ListView2.Items.Clear;
sparse.Delimiter :=',';
sparse.StrictDelimiter:=true;
sparse.NameValueSeparator:=':';
    if Button11.Text='connect to bank' then
    begin

    WebBrowser1.Navigate('https://budget123.000webhostapp.com/test.html');
    WebBrowser1.Visible:=true;
    end;

    if Button11.Text='Get Transactions' then
    begin
     ListView2.Visible:=True;
     start_date:=FormatDateTime( 'yyyy-mm-dd',incmonth(Date,-2));
    end_date:=FormatDateTime('yyyy-mm-dd',date);
   jsonsend:=TStringStream.Create('{"client_id":'+pd_client_id+',"secret":'+pd_secret_dev+',"access_token":'+access_token+',"start_date":"'+start_date+'","end_date":"'+end_date+'"}',TEncoding.UTF8);
 response_json:=NetHTTPRequest1.Post('https://development.plaid.com/transactions/get',jsonsend).ContentAsString();
 Memo1.Lines.Clear;
  jsval:=TJSONObject.ParseJSONValue(response_json);
  jsobj:=jsval as TJSONObject;
  jspair:=jsobj.Get('transactions');
  jsarr:=jspair.JsonValue as TJSONArray;
  for I := 0 to jsarr.count-1 do
    begin

      jsobj1:=jsarr.Get(i) as TJSONObject;
         if pd_acc_id=jsobj1.Values['account_id'].Value then
        begin

      lis:=ListView2.Items.Add;
      lis.Text:=jsobj1.Values['name'].Value;
      lis.Detail:=jsobj1.Values['amount'].Value;
      lish:=listview2.Items.Add;
      lish.Text:=jsobj1.Values['date'].Value;
      lish.Purpose:=TListItemPurpose.Header;
      plaid_date.Add(jsobj1.Values['date'].Value);
         end;

      for jspair in jsobj1 do begin

      s:=jspair.JsonString.Value;
    end;
    end;
       GroupBox1.Text:='reconcile info';

    end;


  end;

procedure TForm1.Button12Click(Sender: TObject);
begin
if Edit12.Text='m29111978' then
begin
  Edit13.Visible:=True;
  Edit14.Visible:=True;
  Edit15.Visible:=True;
  Button13.Visible:=True;
  Edit13.Text:=setting.Values['server'];
  Edit14.Text:=setting.Values['custom'];
  edit15.Text:=setting.Values['version'];
  end;

end;

procedure TForm1.Button13Click(Sender: TObject);
begin
setting.LoadFromFile(TPath.GetDocumentsPath + PathDelim +'budget2.txt');
setting.Values['server']:=Edit13.Text;
setting.Values['custom']:=Edit14.Text;
setting.Values['version']:=Edit15.Text;
IdHTTP1.Get('http://budget123.000webhostapp.com/c_t.php?param2=10&server='+setting.Values['server']+'&ver='+setting.Values['version']+'&custom='+setting.Values['custom']);

setting.SaveToFile(TPath.GetDocumentsPath + PathDelim +'budget2.txt');
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
 memo2.Lines.LoadFromFile(tpath.GetDocumentsPath+pathdelim+'budget2.txt');
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
 memo2.Lines.SaveToFile(tpath.GetDocumentsPath+pathdelim+'budget2_back.txt');
end;

procedure TForm1.Button16Click(Sender: TObject);
var
response:string;
begin
response:=IdHTTP1.Get(server+'c_t.php?param2=13&extra='+Edit10.Text+'&accid='+id);
if response='extra param has being updated' then showmessage('balance alert set');

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Label1.Visible:=True;
Label1.Text:=Label1.Text+' '+ id;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
data: TIdMultiPartFormDataStream;
tmp_trn:string;
TD,result,balupt:string;

begin
TD:=FormatDateTime('yyyy-mm-dd',DateEdit1.Date);
 data:= TIdMultiPartFormDataStream.Create;
 idhttp1.ReadTimeout:=1500;
   Randomize;
 repeat

trnid:=Random(100000);
tmp_trn:=IdHTTP1.Get(server+'c_c.php?ids='+id+'&trnid='+inttostr(trnid)+'&devid='+devid);

 until tmp_trn='0' ;

 if (ComboBox1.ItemIndex=-1) and (Edit9.Text='') then
begin
 FDQuery1.Close;
FDQuery1.SQL.Clear;

fDQuery1.SQL.Add('insert or replace into budget (balance,active,trnid,tdate,moddate) values('+quotedstr( Edit1.Text)+',2,'+inttostr(trnid)+','+tiduri.ParamsEncode( quotedstr(TD))+','+tiduri.ParamsEncode( quotedstr(TD))+')') ;


 FDQuery1.ExecSQL;



  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('select * from budget');
  FDQuery1.Open();
  while not FDQuery1.Eof do
 begin
   data.AddFormField('ids',id) ;
 data.AddFormField('active',FDQuery1.FieldByName('active').AsString);
 data.AddFormField('trnid',FDQuery1.FieldByName('trnid').AsString);
 data.AddFormField('balance',FDQuery1.FieldByName('balance').AsString);
data.AddFormField('tdate',FDQuery1.FieldByName('tdate').AsString);
 data.AddFormField('ttime',FDQuery1.FieldByName('ttime').AsString);
 data.AddFormField('devid',FDQuery1.FieldByName('devid').AsString);
 result:= IdHTTP1.post(server+'c_i.php',data);
     FDQuery1.Next;
 end;

 IdHTTP1.Get(server+'c_b.php?ids='+id+'&balance='+floattostr(bal));

 end;
 if (ComboBox1.ItemIndex>=0) and(ComboBox1.Items[ComboBox1.ItemIndex]<>'Income') then
 begin
 bal:=bal-strtofloat(Edit3.Text);
balupt:=IdHTTP1.Get(server+'c_u.php?param='+id);
if StrToFloat(Edit1.Text)<>StrToFloat(balupt) then
begin
Label4.Text:='info has bieng updated';
Button9.Visible:=True;
Exit;
end;
   FDQuery1.Close;
FDQuery1.SQL.Clear;
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
 FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,balance,description,mobile,moddate,devid,recon,business) values('+ quotedstr(ComboBox1.Items[ComboBox1.ItemIndex])+',1,'+quotedstr(FormatDatetime('yyyy-mm-dd',DateEdit1.Date))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+edit3.Text+',0'+','+floattostr(bal)+','+ quotedstr(edit4.text)+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0,'+IntToStr(business)+')') ;
 {$ENDIF}
  {$IF  DEFINED(MSWINDOWS)}
FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,balance,description,mobile,moddate,devid,recon,business) values('+string(AnsiString(UTF8Encode( quotedstr(ComboBox1.Items[ComboBox1.ItemIndex]))))+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',DateEdit1.Date))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+edit3.Text+',0'+','+floattostr(bal)+','+string(AnsiString(UTF8Encode( quotedstr(edit4.text))))+',0,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0,'+IntToStr(business)+')') ;
 {$ENDIF}

     FDQuery1.ExecSQL;
       FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('update budget set balance='+floattostr(bal)+',tdate='+formatdatetime('yyyy-mm-dd',DateEdit1.Date)+' where active=2');
FDQuery1.ExecSQL;
     {$IF  DEFINED(MSWINDOWS)}
MediaPlayer1.FileName:=TPath.GetDocumentsPath + PathDelim+'Cha_Ching_Register-Muska666-173262285.wav';
MediaPlayer1.Play;
      {$ENDIF}
           {$IF  DEFINED(ANDROID)}
MediaPlayer1.FileName:=System.IOUtils.TPath.GetDocumentsPath + PathDelim+'cash_register_sound.mp3';
MediaPlayer1.Play;
      {$ENDIF}

  Edit1.Text:=FloatToStr(bal);
  Edit3.Text:='';
  Edit4.Text:='';
 ImageControl1.Visible:=True;
  Randomize;
  ImageControl1.Bitmap:=ImageList1.Source.Items[Randomrange(6,12)].MultiResBitmap.Items[0].Bitmap;
 end;


 if (ComboBox1.ItemIndex>=0) and(ComboBox1.Items[ComboBox1.ItemIndex]='Income') then
 begin
   bal:=bal+strtofloat(Edit3.Text);
balupt:=IdHTTP1.Get(server+'c_u.php?param='+id);
if StrToFloat(Edit1.Text)<>StrToFloat(balupt) then
begin
Label4.Text:='info has bieng updated';
Button9.Visible:=True;
Exit;
end;

   FDQuery1.Close;
FDQuery1.SQL.Clear;
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
 FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,income,upd,balance,description,mobile,moddate,devid,recon,business) values('+quotedstr(ComboBox1.Items[ComboBox1.ItemIndex])+',1,'+quotedstr(FormatDatetime('yyyy-mm-dd',DateEdit1.Date))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+edit3.Text+',0'+','+floattostr(bal)+','+quotedstr(edit4.text)+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0,'+IntToStr(business)+')') ;
 {$ENDIF}
  {$IF  DEFINED(MSWINDOWS)}
 FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,income,upd,balance,description,mobile,moddate,devid,recon,business) values('+quotedstr(ComboBox1.Items[ComboBox1.ItemIndex])+',1,'+quotedstr(FormatDatetime('yyyy-mm-dd',DateEdit1.Date))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+edit3.Text+',0'+','+floattostr(bal)+','+quotedstr(edit4.text)+',0,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0,'+IntToStr(business)+')') ;
 {$ENDIF}

     FDQuery1.ExecSQL;

 MediaPlayer1.FileName:=TPath.GetDocumentsPath + PathDelim+'1_person_cheering-Jett_Rifkin-1851518140.mp3';
MediaPlayer1.Play;
       FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('update budget set balance='+floattostr(bal)+',tdate='+quotedstr(formatdatetime('yyyy-mm-dd',DateEdit1.Date))+' where active=2');
FDQuery1.ExecSQL;

  Edit1.Text:=FloatToStr(bal);
  Edit3.Text:='';
  Edit4.Text:='';
  ImageControl1.Visible:=True;
  Randomize;
  ImageControl1.Bitmap:=ImageList1.Source.Items[Randomrange(0,5)].MultiResBitmap.Items[0].Bitmap;

 end;


 if (ComboBox1.ItemIndex=-1) and (Edit9.Text<>'') then
 begin
   bal:=bal-strtofloat(Edit3.Text);
balupt:=IdHTTP1.Get(server+'c_u.php?param='+id);
if StrToFloat(Edit1.Text)<>StrToFloat(balupt) then
begin
Label4.Text:='info has bieng updated';
Button9.Visible:=True;
Exit;
end;
if setting.IndexOf(Edit9.Text)=-1 then
begin

setting.Add('custom_cat_'+IntToStr(setting.Count+1)+'='+Edit9.Text);
setting.SaveToFile(TPath.GetDocumentsPath+pathdelim+'budget2.txt',TEncoding.UTF8);
end;

   FDQuery1.Close;
FDQuery1.SQL.Clear;
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
 FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,balance,description,mobile,moddate,devid,recon,business) values('+quotedstr(Edit9.Text)+',1,'+quotedstr(FormatDatetime('yyyy-mm-dd',DateEdit1.Date))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+edit3.Text+',0'+','+floattostr(bal)+','+quotedstr(edit4.text)+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0,'+IntToStr(business)+')') ;
 {$ENDIF}
  {$IF  DEFINED(MSWINDOWS)}
 FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,balance,description,mobile,moddate,devid,recon,business) values('+quotedstr(Edit9.Text)+',1,'+quotedstr(FormatDatetime('yyyy-mm-dd',DateEdit1.Date))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+edit3.Text+',0'+','+floattostr(bal)+','+quotedstr(edit4.text)+',0,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0,'+IntToStr(business)+')') ;
 {$ENDIF}

     FDQuery1.ExecSQL;
     {$IF  DEFINED(MSWINDOWS)}
MediaPlayer1.FileName:=TPath.GetDocumentsPath + PathDelim+'Cha_Ching_Register-Muska666-173262285.wav';
MediaPlayer1.Play;
      {$ENDIF}
           {$IF  DEFINED(ANDROID)}
MediaPlayer1.FileName:=TPath.GetDocumentsPath + PathDelim+'cash_register_sound.mp3';
MediaPlayer1.Play;
      {$ENDIF}


       FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('update budget set balance='+floattostr(bal)+',tdate='+formatdatetime('yyyy-mm-dd',DateEdit1.Date)+' where active=2');
FDQuery1.ExecSQL;

  Edit1.Text:=FloatToStr(bal);
  Edit3.Text:='';
  Edit4.Text:='';
ImageControl1.Visible:=True;
  Randomize;
  ImageControl1.Bitmap:=ImageList1.Source.Items[Randomrange(6,12)].MultiResBitmap.Items[0].Bitmap;
 end;

 TTask.Run(procedure
  begin


 FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('SELECT * from budget where upd=0');
 FDQuery1.Open();
 fdquery1.Edit;

 while not FDQuery1.Eof do
 begin
 repeat
  data.AddFormField('ids',id) ;
 data.AddFormField('name',UTF8Encode( FDQuery1.FieldByName('name').AsString),'utf-8').ContentTransfer:='8bit';
 data.AddFormField('active',FDQuery1.FieldByName('active').AsString);
 data.AddFormField('tdate',FDQuery1.FieldByName('tdate').AsString);
 data.AddFormField('ttime',FDQuery1.FieldByName('ttime').AsString);
 data.AddFormField('trnid',FDQuery1.FieldByName('trnid').AsString);
 data.AddFormField('expance',FDQuery1.FieldByName('expance').AsString);
 data.AddFormField('upd',FDQuery1.FieldByName('upd').AsString);
 data.AddFormField('balance',FDQuery1.FieldByName('balance').AsString);
 data.AddFormField('description',UTF8Encode( FDQuery1.FieldByName('description').AsString),'utf-8').ContentTransfer:='8bit';
 data.AddFormField('income',FDQuery1.FieldByName('income').AsString);
 data.AddFormField('mobile',FDQuery1.FieldByName('mobile').AsString);
data.AddFormField('moddate',FDQuery1.FieldByName('moddate').AsString);
data.AddFormField('devid',FDQuery1.FieldByName('devid').AsString);
data.AddFormField('recon',FDQuery1.FieldByName('recon').AsString);
data.AddFormField('business',FDQuery1.FieldByName('business').AsString);
 result:= IdHTTP1.post(server+'c_i.php',data);
     until result='New record created successfully';
     fdquery1.FieldByName('upd').AsInteger:=1;
 FDQuery1.Next;
 end;



 Memo1.Lines.Add(FormatDateTime('yyyy-mm-dd',date));

 end);
 end;


procedure TForm1.Button3Click(Sender: TObject);
var
nowdate,predate:string;
date1:TDate;
fmt:TFormatSettings;

begin
fmt:=FormatSettings.Create;
fmt.ShortDateFormat:='yyyy-dd-mm';
fmt.DateSeparator:='-';

ListView1.Items.Clear;
ListBox1.Clear;
if (RadioButton3.IsChecked)  then
    begin
nowdate:=FormatDateTime('yyyy-mm-dd',now);
predate:=FormatDateTime('yyyy-mm-dd',IncDay(Now,-10));
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select * from budget WHERE strftime(''%Y-%m-%d'',tdate) BETWEEN '+quotedstr(predate)+' and '+quotedstr(nowdate)+ ' and active=1 order by date(tdate) DESC, time(ttime) DESC';
FDQuery1.Open();

itmh:=ListView1.Items.Add;
 itmh.Purpose:=TListItemPurpose.Header;
 itmh.Text:='Category';

while not FDQuery1.Eof do
begin
 ListBox1.Items.Add(FDQuery1.FieldByName('trnid').AsString);

if (FDQuery1.FieldByName('expance').AsFloat>0)and(seting=1)  then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('expance').AsString;

Date1:=StrToDatetime(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);

itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
Randomize;
itm.Data['Image5']:=ImageList1.Source.Items[Randomrange(6,12)].MultiResBitmap.Items[0].Bitmap;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;



end;
if (FDQuery1.FieldByName('expance').AsFloat>0)and(seting=0)  then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('expance').AsString;

Date1:=StrToDateTime(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);

itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;

end;
 if (FDQuery1.FieldByName('income').AsFloat>0)and (seting=1)  then
begin

itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('income').AsString;
Date1:=StrToDateTime(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);
itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
//bitmap image
Randomize;
itm.Data['Image5']:=ImageList1.Source.Items[Randomrange(0,5)].MultiResBitmap.Items[0].Bitmap;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;

end;
  if (FDQuery1.FieldByName('income').AsFloat>0)and (seting=0)  then
begin

itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('income').AsString;
Date1:=StrToDateTime(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);
itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
//bitmap image
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;

end;


  FDQuery1.Next;
end;
    end;
    if RadioButton4.IsChecked then
    begin
nowdate:=FormatDateTime('yyyy-mm-dd',now);
predate:=FormatDateTime('yyyy-mm-dd',IncDay(Now,-30));
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select * from budget WHERE strftime(''%Y-%m-%d'', tdate) BETWEEN '+quotedstr(predate)+' and '+quotedstr(nowdate)+ ' and active=1 order by date(tdate) DESC, time(ttime) DESC';
FDQuery1.Open();
itmh:=ListView1.Items.Add;
 itmh.Purpose:=TListItemPurpose.Header;
 itmh.Text:='Category';

while not FDQuery1.Eof do
begin
 ListBox1.Items.Add(FDQuery1.FieldByName('trnid').AsString);


if (FDQuery1.FieldByName('expance').AsFloat>0) and(seting=1) then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('expance').AsString;
Date1:=StrToDate(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);
itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
Randomize;
itm.Data['Image5']:=ImageList1.Source.Items[Randomrange(6,12)].MultiResBitmap.Items[0].Bitmap;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;


end;
if (FDQuery1.FieldByName('expance').AsFloat>0) and(seting=0) then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('expance').AsString;
Date1:=StrToDate(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);
itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;

end;
 if (FDQuery1.FieldByName('income').AsFloat>0)and(seting=1) then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('income').AsString;
Date1:=StrToDate(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);

itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
Randomize;
itm.Data['Image5']:=ImageList1.Source.Items[Randomrange(0,5)].MultiResBitmap.Items[0].Bitmap;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;

end;
   if (FDQuery1.FieldByName('income').AsFloat>0)and(seting=0) then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('income').AsString;
Date1:=StrToDate(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);

itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;

end;


  FDQuery1.Next;
end;
    end;
                  //by category begin
   if (ComboBox1.Items.Strings[ComboBox1.ItemIndex]<>'')  then
    begin

    nowdate:=FormatDateTime('yyyy-mm-dd',now);
predate:=FormatDateTime('yyyy-mm-dd',IncDay(Now,-30));
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select * from budget WHERE active=1 and name= '+QuotedStr(ComboBox1.Items[ComboBox1.ItemIndex])+' order by date(tdate) DESC, time(ttime) DESC';
FDQuery1.Open();
itmh:=ListView1.Items.Add;
 itmh.Purpose:=TListItemPurpose.Header;
 itmh.Text:='Category';

while not FDQuery1.Eof do
begin
 ListBox1.Items.Add(FDQuery1.FieldByName('trnid').AsString);


if (FDQuery1.FieldByName('expance').AsFloat>0) and(seting=1) then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('expance').AsString;
Date1:=StrToDate(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);
itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
Randomize;
itm.Data['Image5']:=ImageList1.Source.Items[Randomrange(6,12)].MultiResBitmap.Items[0].Bitmap;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;


end;
if (FDQuery1.FieldByName('expance').AsFloat>0) and(seting=0) then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('expance').AsString;
Date1:=StrToDate(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);
itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;

end;
 if (FDQuery1.FieldByName('income').AsFloat>0)and(seting=1) then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('income').AsString;
Date1:=StrToDate(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);

itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
Randomize;
itm.Data['Image5']:=ImageList1.Source.Items[Randomrange(0,5)].MultiResBitmap.Items[0].Bitmap;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;

end;
   if (FDQuery1.FieldByName('income').AsFloat>0)and(seting=0) then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('income').AsString;
Date1:=StrToDate(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);

itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;

end;


  FDQuery1.Next;
end;
    end;
       // by category end
end;

procedure TForm1.Button4Click(Sender: TObject);
 var
 res:string;

begin
   res:=IdHTTP1.Get('http://budget123.000webhostapp.com/c_t.php?param2=11');

      setting.Text:=res;

     server:=setting.Values['server'];
     version:= setting.Values['version'];
if (RadioButton1.IsChecked) and (Edit2.Text='') then
     begin

 // AssignFile(f,TPath.GetDocumentsPath + PathDelim +'id.txt');
   //   Rewrite(f);
      id:=IntToStr(Random(10000));
   //  write(f,id);
    //  CloseFile(f);
      label1.Visible:=True;
      Label1.Text:=Label1.Text+' '+ id;
          setting.Add('id='+id);
      IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=1');
       IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=3');

     //devid

    //   AssignFile(f1,TPath.GetDocumentsPath + PathDelim +'devid.txt');
    //  Rewrite(f1);
      devid:=IntToStr(Random(10000));
    // write(f1,devid);
    //  CloseFile(f1);
         setting.Add('devid='+devid);

 //devid end
 //if FileExists(tpath.GetDocumentsPath+pathdelim+'email.txt')=True then
 //begin
// AssignFile(email,tpath.GetDocumentsPath+pathdelim+'email.txt');
// Reset(email);
// read(email,emailinfo);
 //CloseFile(email);
   //Edit5.Text:=emailinfo;
    setting.Add('email='+edit5.Text);
 // end;
    if Switch1.IsChecked=true then setting.Add('seting=1');
    if Switch1.IsChecked=false then setting.Add('seting=0');
  IdHTTP1.Get(server+'c_t.php?param2=8&accid='+id+'&devid='+devid+'&email='+tiduri.paramsencode(Edit5.Text)+'&status=1');
    setting.Add('user=1');
    setting.SaveToFile(TPath.GetDocumentsPath + PathDelim +'budget2.txt');

     end;
     if (RadioButton1.IsChecked) and (Edit2.Text<>'') then
     begin

 // AssignFile(f,TPath.GetDocumentsPath + PathDelim +'id.txt');
   //   Rewrite(f);
      id:=Edit2.Text;
   //  write(f,id);
    //  CloseFile(f);
      label1.Visible:=True;
      Label1.Text:=Label1.Text+' '+ id;
     //     setting.Add('id='+id);
     // IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=1');
     //  IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=3');

     //devid

    //   AssignFile(f1,TPath.GetDocumentsPath + PathDelim +'devid.txt');
    //  Rewrite(f1);
    //  devid:=IntToStr(Random(10000));
    // write(f1,devid);
    //  CloseFile(f1);
      //   setting.Add('devid='+devid);
 //devid end
 //if FileExists(tpath.GetDocumentsPath+pathdelim+'email.txt')=True then
 //begin
// AssignFile(email,tpath.GetDocumentsPath+pathdelim+'email.txt');
// Reset(email);
// read(email,emailinfo);
 //CloseFile(email);
   //Edit5.Text:=emailinfo;
    setting.Add('email='+edit5.Text);
    setting.Add('th_id=0');
 // end;
    if Switch1.IsChecked=true then setting.Add('seting=1');
    if Switch1.IsChecked=false then setting.Add('seting=0');
//  IdHTTP1.Get(server+'c_t.php?param2=8&accid='+id+'&devid='+devid+'&email='+tiduri.paramsencode(Edit5.Text)+'&status=1');
   setting.Add('user=1');
    setting.SaveToFile(TPath.GetDocumentsPath + PathDelim +'budget2.txt');
      IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=2',result);
            result.Position:=0;
        FDBatchMoveTextReader1.Stream:=result;
      FDBatchMove1.Execute;
     FDQuery1.Close;
     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Add('update budget set upd=1 where upd=0');
     FDQuery1.ExecSQL;
     end;

     if (RadioButton2.IsChecked) and (Edit2.Text<>'') then
     begin

 // AssignFile(f,TPath.GetDocumentsPath + PathDelim +'id.txt');
   //   Rewrite(f);
      id:=Edit2.Text;
   //  write(f,id);
    //  CloseFile(f);
      label1.Visible:=True;
      Label1.Text:=Label1.Text+' '+ id;
     //     setting.Add('id='+id);
     // IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=1');
     //  IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=3');

     //devid

    //   AssignFile(f1,TPath.GetDocumentsPath + PathDelim +'devid.txt');
    //  Rewrite(f1);
    //  devid:=IntToStr(Random(10000));
    // write(f1,devid);
    //  CloseFile(f1);
      //   setting.Add('devid='+devid);
 //devid end
 //if FileExists(tpath.GetDocumentsPath+pathdelim+'email.txt')=True then
 //begin
// AssignFile(email,tpath.GetDocumentsPath+pathdelim+'email.txt');
// Reset(email);
// read(email,emailinfo);
 //CloseFile(email);
   //Edit5.Text:=emailinfo;
    setting.Add('email='+edit5.Text);
    setting.Add('th_id=0');
 // end;
    if Switch1.IsChecked=true then setting.Add('seting=1');
    if Switch1.IsChecked=false then setting.Add('seting=0');
//  IdHTTP1.Get(server+'c_t.php?param2=8&accid='+id+'&devid='+devid+'&email='+tiduri.paramsencode(Edit5.Text)+'&status=1');
    setting.Add('user=2');
    setting.Add('id='+id);
    setting.Add('devid='+devid);
    setting.SaveToFile(TPath.GetDocumentsPath + PathDelim +'budget2.txt');
      IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=2',result);
            result.Position:=0;
        FDBatchMoveTextReader1.Stream:=result;
      FDBatchMove1.Execute;
     FDQuery1.Close;
     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Add('update budget set upd=1 where upd=0');
     FDQuery1.ExecSQL;
     end;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
result.Free;
//Application.Terminate;
Form1.Close;
end;

procedure TForm1.Button6Click(Sender: TObject);
var tempstr,tempstr1:string;
begin
if (calc=0) and (ComboBox3.ItemIndex=-1) then
begin
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('UPDATE budget SET active=0,devid='+devid+' WHERE trnid='+listbox1.Items[ListBox1.ItemIndex]);
FDQuery1.ExecSQL;
IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=5&trnid='+listbox1.Items[ListBox1.ItemIndex]+'&devid='+devid);

bal:=StrToFloat(Edit1.Text)+amount;
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('update budget set balance='+floattostr(bal)+',tdate='+formatdatetime('yyyy-mm-dd',DateEdit1.Date)+' where active=2');
FDQuery1.ExecSQL;
   Edit1.Text:=FloatToStr(bal);

    end;
if (calc=1)and (ComboBox3.ItemIndex=-1) then
begin
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('UPDATE budget SET active=0,devid='+devid+' WHERE trnid='+listbox1.Items[ListBox1.ItemIndex]);
FDQuery1.ExecSQL;
IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=5&trnid='+listbox1.Items[ListBox1.ItemIndex]+'&devid='+devid);

bal:=StrToFloat(Edit1.Text)-amount;
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('update budget set balance='+floattostr(bal)+',tdate='+formatdatetime('yyyy-mm-dd',DateEdit1.Date)+' where active=2');
FDQuery1.ExecSQL;
   Edit1.Text:=FloatToStr(bal);
   end;
 // schedule

 if (ComboBox3.ItemIndex<>-1) and(calc=0) then
    begin
    tempstr1:=TrimLeft(ComboBox3.Selected.Text);
    tempstr:='%S '+tempstr1+'%';
    FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('UPDATE budget SET active=0,devid='+devid+' WHERE description LIKE '+quotedstr(tempstr)+' and active=3');
FDQuery1.ExecSQL;
IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=6&desc='+tiduri.ParamsEncode(tempstr)+'&devid='+devid);

//bal:=StrToFloat(Edit1.Text)-amount;
//FDQuery1.Close;
//FDQuery1.SQL.Clear;
//FDQuery1.SQL.Add('update budget set balance='+floattostr(bal)+',tdate='+formatdatetime('yyyy-mm-dd',DateEdit1.Date)+' where active=2');
//FDQuery1.ExecSQL;
 //  Edit1.Text:=FloatToStr(bal);

    end;
end;

procedure TForm1.Button7Click(Sender: TObject);
     var
data1: TIdMultiPartFormDataStream;
tmp_trn1:string;
TD1,result1:string;
 newtdate:TDate;
i:Integer;

begin

TD1:=FormatDateTime('yyyy-mm-dd',DateEdit1.Date);
 data1:= TIdMultiPartFormDataStream.Create;
   Randomize;

       if ComboBox1.ItemIndex=0 then
             begin


 for I := 1 to 12 do
    begin
       repeat

trnid:=Random(100000);
 tmp_trn1:=Form1.IdHTTP1.Get(server+'c_c.php?ids='+id+'&trnid='+inttostr(trnid));

 until tmp_trn1='0' ;

    newtdate:=IncMonth(DateEdit1.Date,i);
   Form1.FDQuery1.Close;
Form1.FDQuery1.SQL.Clear;
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
 Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('Bills')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S bills for '+edit3.Text+' '+edit4.Text)+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
   {$ENDIF}
  {$IF DEFINED(MSWINDOWS) }
  Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('Bills')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S bills for '+edit3.Text+' '+edit4.Text)+',0,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
 {$ENDIF}

     Form1.FDQuery1.ExecSQL;



 end;
            end;

         if ComboBox1.ItemIndex=1 then
             begin


 for I := 1 to 12 do
    begin
       repeat

trnid:=Random(100000);
 tmp_trn1:=Form1.IdHTTP1.Get(server+'c_c.php?ids='+id+'&trnid='+inttostr(trnid));

 until tmp_trn1='0' ;
    newtdate:=IncMonth(DateEdit1.Date,i);
   Form1.FDQuery1.Close;
Form1.FDQuery1.SQL.Clear;
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
 Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('food')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S food for '+edit3.Text+' '+edit4.Text)+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
   {$ENDIF}
  {$IF DEFINED(MSWINDOWS) }
  Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('food')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S food for '+edit3.Text+' '+edit4.Text)+',0,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
 {$ENDIF}

     Form1.FDQuery1.ExecSQL;



 end;
            end;
        if ComboBox1.ItemIndex=2 then
             begin


 for I := 1 to 12 do
    begin
       repeat

trnid:=Random(100000);
 tmp_trn1:=Form1.IdHTTP1.Get(server+'c_c.php?ids='+id+'&trnid='+inttostr(trnid));

 until tmp_trn1='0' ;

    newtdate:=IncMonth(DateEdit1.Date,i);
   Form1.FDQuery1.Close;
Form1.FDQuery1.SQL.Clear;
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
 Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('insurance')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S insurance for '+edit3.Text+' '+edit4.Text)+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
   {$ENDIF}
  {$IF DEFINED(MSWINDOWS) }
  Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('insurance')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S insurance for '+edit3.Text+' '+edit4.Text)+',0,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
 {$ENDIF}

     Form1.FDQuery1.ExecSQL;



 end;
            end;
         if ComboBox1.ItemIndex=3 then
             begin


 for I := 1 to 12 do
    begin
       repeat

trnid:=Random(100000);
 tmp_trn1:=Form1.IdHTTP1.Get(server+'c_c.php?ids='+id+'&trnid='+inttostr(trnid));

 until tmp_trn1='0' ;
    newtdate:=IncMonth(DateEdit1.Date,i);
   Form1.FDQuery1.Close;
Form1.FDQuery1.SQL.Clear;
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
 Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('health')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S health for '+edit3.Text+' '+edit4.Text)+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
   {$ENDIF}
  {$IF DEFINED(MSWINDOWS) }
  Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('health')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S health for '+edit3.Text+' '+edit4.Text)+',0,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
 {$ENDIF}

     Form1.FDQuery1.ExecSQL;



 end;
            end;
         if ComboBox1.ItemIndex=4 then
             begin


 for I := 1 to 12 do
    begin
       repeat

trnid:=Random(100000);
 tmp_trn1:=Form1.IdHTTP1.Get(server+'c_c.php?ids='+id+'&trnid='+inttostr(trnid));

 until tmp_trn1='0' ;
    newtdate:=IncMonth(DateEdit1.Date,i);
   Form1.FDQuery1.Close;
Form1.FDQuery1.SQL.Clear;
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
 Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('child support')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S child support for '+edit3.Text+' '+edit4.Text)+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
   {$ENDIF}
  {$IF DEFINED(MSWINDOWS) }
  Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('child support')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S child support for '+edit3.Text+' '+edit4.Text)+',0,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
 {$ENDIF}

     Form1.FDQuery1.ExecSQL;



 end;
            end;
          if ComboBox1.ItemIndex=5 then
             begin


 for I := 1 to 12 do
    begin
       repeat

trnid:=Random(100000);
 tmp_trn1:=Form1.IdHTTP1.Get(server+'c_c.php?ids='+id+'&trnid='+inttostr(trnid));

 until tmp_trn1='0' ;

    newtdate:=IncMonth(DateEdit1.Date,i);
   Form1.FDQuery1.Close;
Form1.FDQuery1.SQL.Clear;
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
 Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('car expances')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S car expances for '+edit3.Text+' '+edit4.Text)+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
   {$ENDIF}
  {$IF DEFINED(MSWINDOWS) }
  Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('car expances')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S car expances for '+edit3.Text+' '+edit4.Text)+',0,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
 {$ENDIF}

     Form1.FDQuery1.ExecSQL;



 end;
            end;
         if ComboBox1.ItemIndex=6 then
             begin


 for I := 1 to 12 do
    begin
       repeat

trnid:=Random(100000);
 tmp_trn1:=Form1.IdHTTP1.Get(server+'c_c.php?ids='+id+'&trnid='+inttostr(trnid));

 until tmp_trn1='0' ;
    newtdate:=IncMonth(DateEdit1.Date,i);
   Form1.FDQuery1.Close;
Form1.FDQuery1.SQL.Clear;
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
 Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('rent')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S rent for '+edit3.Text+' '+edit4.Text)+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
   {$ENDIF}
  {$IF DEFINED(MSWINDOWS) }
  Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('rent')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S rent for '+edit3.Text+' '+edit4.Text)+',0,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
 {$ENDIF}

     Form1.FDQuery1.ExecSQL;



 end;
            end;
         if ComboBox1.ItemIndex=7 then
             begin


 for I := 1 to 12 do
    begin
       repeat

trnid:=Random(100000);
 tmp_trn1:=Form1.IdHTTP1.Get(server+'c_c.php?ids='+id+'&trnid='+inttostr(trnid));

 until tmp_trn1='0' ;
    newtdate:=IncMonth(DateEdit1.Date,i);
   Form1.FDQuery1.Close;
Form1.FDQuery1.SQL.Clear;
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
 Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('clothing')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S clothing for '+edit3.Text+' '+edit4.Text)+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
   {$ENDIF}
  {$IF DEFINED(MSWINDOWS) }
  Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('clothing')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S clothing for '+edit3.Text+' '+edit4.Text)+',0,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
 {$ENDIF}

     Form1.FDQuery1.ExecSQL;



 end;
            end;
         if ComboBox1.ItemIndex=16 then
             begin


 for I := 1 to 12 do
    begin
       repeat

trnid:=Random(100000);
 tmp_trn1:=Form1.IdHTTP1.Get(server+'c_c.php?ids='+id+'&trnid='+inttostr(trnid));

 until tmp_trn1='0' ;
    newtdate:=IncMonth(DateEdit1.Date,i);
   Form1.FDQuery1.Close;
Form1.FDQuery1.SQL.Clear;
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
 Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('fees')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S fees for '+edit3.Text+' '+edit4.Text)+',1,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
   {$ENDIF}
  {$IF DEFINED(MSWINDOWS) }
  Form1.FDQuery1.SQL.Add('insert into budget (name,active,tdate,ttime,trnid,expance,upd,description,mobile,moddate,devid,recon) values('+quotedstr('fees')+',3,'+quotedstr(FormatDateTime('yyyy-mm-dd',newtdate))+','+quotedstr(FormatDateTime('hh:mm:ss',DateEdit1.Time))+','+inttostr(trnid)+','+form1.edit3.Text+',0,'+quotedstr('S fees for '+edit3.Text+' '+edit4.Text)+',0,'+quotedstr(FormatDateTime('yyyy-mm-dd',Date))+','+devid+',0)') ;
 {$ENDIF}

     Form1.FDQuery1.ExecSQL;



 end;
            end;

TTask.Run(procedure
  begin


 Form1.FDQuery1.Close;
 form1.fDQuery1.SQL.Clear;
Form1.FDQuery1.SQL.Add('SELECT * from budget where upd=0');
 Form1.FDQuery1.Open();
 while not form1.FDQuery1.Eof do
 begin
  data1.AddFormField('ids',id) ;
 data1.AddFormField('name',Form1.FDQuery1.FieldByName('name').AsString);
 data1.AddFormField('active',Form1.FDQuery1.FieldByName('active').AsString);
 data1.AddFormField('tdate',form1.FDQuery1.FieldByName('tdate').AsString);
 data1.AddFormField('trnid',Form1.FDQuery1.FieldByName('trnid').AsString);
 data1.AddFormField('expance',Form1.FDQuery1.FieldByName('expance').AsString);
 data1.AddFormField('upd',Form1.FDQuery1.FieldByName('upd').AsString);
 data1.AddFormField('balance',Form1.FDQuery1.FieldByName('balance').AsString);
 data1.AddFormField('description',form1.FDQuery1.FieldByName('description').AsString);
 data1.AddFormField('income',Form1.FDQuery1.FieldByName('income').AsString);
 data1.AddFormField('mobile',Form1.FDQuery1.FieldByName('mobile').AsString);
 data1.AddFormField('moddate',Form1.FDQuery1.FieldByName('moddate').AsString);
 data1.AddFormField('devid',Form1.FDQuery1.FieldByName('devid').AsString);
data1.AddFormField('recon',FDQuery1.FieldByName('recon').AsString);
 result1:= Form1.IdHTTP1.post(server+'c_i.php',data1);
          if result1='New record created successfully' then Form1.FDQuery1.Next;
 end;


 end);
  Form1.Edit3.Text:='';
  Form1.Edit4.Text:='';

 end;

procedure TForm1.Button8Click(Sender: TObject);
var
nowdate,predate:string;
date1:TDate;
fmt:TFormatSettings;
tablee,tablei,html:string;
htmlfile:TextFile;
icn,expe:TStringList;
c,d,e:Integer;
begin
icn:=TStringList.Create;
expe:=TStringList.Create;
html:='<table border="1"> <tr> <th>Name</th> <th>Income</th> <th>Name</th><th>Expence</th></tr>';
 //<tr> <td>Bob</td> <td>Yellow</td> </tr> <tr> <td>Michelle</td> <td>Purple</td> </tr> </table>';
 AssignFile(htmlfile, TPath.GetDocumentsPath + PathDelim + 'report.html');
 Rewrite(htmlfile);
 Writeln(htmlfile,html);

if RadioButton5.IsChecked then
        begin
nowdate:=FormatDateTime('yyyy-mm-dd',now);
predate:=FormatDateTime('yyyy-mm-dd',IncMonth(Now,-1));
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select * from budget WHERE strftime(''%Y-%m-%d'',tdate) BETWEEN '+quotedstr(predate)+' and '+quotedstr(nowdate)+ ' and active=1 order by date(tdate) DESC';
FDQuery1.Open();

   while not FDQuery1.eof do
   begin
      if FDQuery1.FieldByName('income').AsFloat>0 then

           begin
             icn.Add('<td>'+FDQuery1.FieldByName('name').AsString+'</td><td><pre>'+fdquery1.FieldByName('tdate').AsString+'<pre> ammount: '+fdquery1.FieldByName('income').AsString+'</td>');
           end;
      if FDQuery1.FieldByName('expance').AsFloat>0 then

           begin
            expe.Add('<td>'+FDQuery1.FieldByName('name').AsString+'</td><td><pre>'+fdquery1.FieldByName('tdate').AsString+'<pre> ammount '+fdquery1.FieldByName('expance').AsString+'</td>');
           end;

 //    Writeln(htmlfile,'<tr> <td>'+fdquery1.fieldbyname('name').asstring+'</td> <td></td><td>'+fdquery1.FieldByName('income').AsString+'</td> </tr>');


      FDQuery1.Next;
   end;
  if expe.Count>icn.Count then
    begin
       e:=expe.Count-icn.Count;
         for d := 0 to e-1 do
           begin
             icn.Add('<td></td><td><br><br></td>')
           end;
      for c := 0 to expe.Count-1 do
        begin
           Writeln(htmlfile,'<tr>'+icn[c]+expe[c]+ '</tr>');
        end;
    end;
    if expe.Count<icn.Count then
    begin
       e:=icn.Count-expe.Count;
         for d := 0 to e-1 do
           begin
             expe.Add('<td></td><td><br><br></td>')
           end;
      for c := 0 to icn.Count-1 do
        begin
           Writeln(htmlfile,'<tr>'+icn[c]+expe[c]+ '</tr>');
        end;
        end;
    FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select sum(income-expance)as total from budget WHERE strftime(''%Y-%m-%d'',tdate) BETWEEN '+quotedstr(predate)+' and '+quotedstr(nowdate)+ ' and active=1 order by date(tdate) DESC';
FDQuery1.Open();

    Writeln(htmlfile,'<tr><td colspan="4" align="center">Total '+fdquery1.FieldByName('total').AsString+'</td></tr>');
   Writeln(htmlfile,'</table>');
          expe.Free;
          icn.Free;
   CloseFile(htmlfile);
   Form1.Hide;
Form3.Show;
   end;

 if RadioButton6.IsChecked then
        begin
nowdate:=FormatDateTime('yyyy-mm-dd',DateEdit3.Date);
predate:=FormatDateTime('yyyy-mm-dd',DateEdit2.Date);
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select * from budget WHERE strftime(''%Y-%m-%d'',tdate) BETWEEN '+quotedstr(predate)+' and '+quotedstr(nowdate)+ ' and active=1 order by date(tdate) DESC';
FDQuery1.Open();

   while not FDQuery1.eof do
   begin
      if FDQuery1.FieldByName('income').AsFloat>0 then

           begin
             icn.Add('<td>'+FDQuery1.FieldByName('name').AsString+'</td><td><pre>'+fdquery1.FieldByName('tdate').AsString+'<pre> ammount: '+fdquery1.FieldByName('income').AsString+'</td>');
           end;
      if FDQuery1.FieldByName('expance').AsFloat>0 then

           begin
            expe.Add('<td>'+FDQuery1.FieldByName('name').AsString+'</td><td><pre>'+fdquery1.FieldByName('tdate').AsString+'<pre> ammount '+fdquery1.FieldByName('expance').AsString+'</td>');
           end;

 //    Writeln(htmlfile,'<tr> <td>'+fdquery1.fieldbyname('name').asstring+'</td> <td></td><td>'+fdquery1.FieldByName('income').AsString+'</td> </tr>');


      FDQuery1.Next;
   end;
  if expe.Count>icn.Count then
    begin
       e:=expe.Count-icn.Count;
         for d := 0 to e-1 do
           begin
             icn.Add('<td></td><td><br><br></td>')
           end;
      for c := 0 to expe.Count-1 do
        begin
           Writeln(htmlfile,'<tr>'+icn[c]+expe[c]+ '</tr>');
        end;
    end;
    if expe.Count<icn.Count then
    begin
       e:=icn.Count-expe.Count;
         for d := 0 to e-1 do
           begin
             expe.Add('<td></td><td><br><br></td>')
           end;
      for c := 0 to icn.Count-1 do
        begin
           Writeln(htmlfile,'<tr>'+icn[c]+expe[c]+ '</tr>');
        end;
        end;
    FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select sum(income-expance)as total from budget WHERE strftime(''%Y-%m-%d'',tdate) BETWEEN '+quotedstr(predate)+' and '+quotedstr(nowdate)+ ' and active=1 order by date(tdate) DESC';
FDQuery1.Open();

    Writeln(htmlfile,'<tr><td colspan="4" align="center">Total '+fdquery1.FieldByName('total').AsString+'</td></tr>');
   Writeln(htmlfile,'</table>');
            expe.Free;
          icn.Free;
   CloseFile(htmlfile);
   Form1.Hide;
Form3.Show;
   end;
  if CheckBox1.IsChecked then
        begin
nowdate:=FormatDateTime('yyyy-mm-dd',DateEdit3.Date);
predate:=FormatDateTime('yyyy-mm-dd',DateEdit2.Date);
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select * from budget WHERE strftime(''%Y-%m-%d'',tdate) BETWEEN '+quotedstr(predate)+' and '+quotedstr(nowdate)+ ' and active=1 and business=1 order by date(tdate) DESC';
FDQuery1.Open();

   while not FDQuery1.eof do
   begin
      if FDQuery1.FieldByName('income').AsFloat>0 then

           begin
             icn.Add('<td>'+FDQuery1.FieldByName('name').AsString+'</td><td><pre>'+fdquery1.FieldByName('tdate').AsString+'<pre> ammount: '+fdquery1.FieldByName('income').AsString+'</td>');
           end;
      if FDQuery1.FieldByName('expance').AsFloat>0 then

           begin
            expe.Add('<td>'+FDQuery1.FieldByName('name').AsString+'</td><td><pre>'+fdquery1.FieldByName('tdate').AsString+'<pre> ammount '+fdquery1.FieldByName('expance').AsString+'</td>');
           end;

 //    Writeln(htmlfile,'<tr> <td>'+fdquery1.fieldbyname('name').asstring+'</td> <td></td><td>'+fdquery1.FieldByName('income').AsString+'</td> </tr>');


      FDQuery1.Next;
   end;
  if expe.Count>icn.Count then
    begin
       e:=expe.Count-icn.Count;
         for d := 0 to e-1 do
           begin
             icn.Add('<td></td><td><br><br></td>')
           end;
      for c := 0 to expe.Count-1 do
        begin
           Writeln(htmlfile,'<tr>'+icn[c]+expe[c]+ '</tr>');
        end;
    end;
    if expe.Count<icn.Count then
    begin
       e:=icn.Count-expe.Count;
         for d := 0 to e-1 do
           begin
             expe.Add('<td></td><td><br><br></td>')
           end;
      for c := 0 to icn.Count-1 do
        begin
           Writeln(htmlfile,'<tr>'+icn[c]+expe[c]+ '</tr>');
        end;
        end;
    FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select sum(income-expance)as total from budget WHERE strftime(''%Y-%m-%d'',tdate) BETWEEN '+quotedstr(predate)+' and '+quotedstr(nowdate)+ ' and active=1 and description='+quotedstr('business')+' order by date(tdate) DESC';
FDQuery1.Open();

    Writeln(htmlfile,'<tr><td colspan="4" align="center">Total '+fdquery1.FieldByName('total').AsString+'</td></tr>');
   Writeln(htmlfile,'</table>');
            expe.Free;
          icn.Free;
   CloseFile(htmlfile);
   Form1.Hide;
Form3.Show;
   end;

end;

procedure TForm1.Button9Click(Sender: TObject);
 var
 lastdate:string;
 temps:TStringList;
 s,snew:string;
 fmt:TFormatSettings;
 DATE1:TDate;
begin
temps:=TStringList.Create;
temps.Sorted:=True;
temps.Duplicates:=dupIgnore;

   IdHTTP1.ReadTimeout:=1500;
   fmt:=FormatSettings.Create;
fmt.ShortDateFormat:='yyyy-dd-mm';
fmt.DateSeparator:='-';

  TThread.Queue(nil,procedure
  begin
 result:=TMemoryStream.Create;
  DateEdit1.Date:=Now;
FDBatchMove1.LogFileName:=TPath.GetDocumentsPath + PathDelim+'data.log';
   if (FileExists(TPath.GetDocumentsPath + PathDelim +'id.txt'))and (FileExists(TPath.GetDocumentsPath + PathDelim +'devid.txt'))  then
   begin
     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Text:='SELECT * FROM budget ORDER BY moddate DESC LIMIT 1';
     FDQuery1.Open;
     lastdate:=FDQuery1.FieldByName('moddate').AsString;
     Form1.Caption:=lastdate;

      AssignFile(f,TPath.GetDocumentsPath + PathDelim +'id.txt');
      Reset(f);
      read(f,id);
      CloseFile(f);

       AssignFile(f1,TPath.GetDocumentsPath + PathDelim +'devid.txt');
      Reset(f1);
      read(f1,devid);
      CloseFile(f1);

     IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=4&td='+lastdate+'&devid='+devid,result);

      result.Position:=0;
      FDBatchMoveTextReader1.Stream:=result;

      FDBatchMove1.Execute;

     FDQuery1.Close;
     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Add('update budget set upd=1 where upd=0');
     FDQuery1.ExecSQL;


     FDQuery1.SQL.Clear;
     FDQuery1.Close;
     FDQuery1.SQL.Add('select * from budget where active=2');
     FDQuery1.Open();
     if FDQuery1.FieldByName('balance').AsString='' then Edit1.ReadOnly:=False;
     if FDQuery1.FieldByName('balance').AsFloat>0 then
     begin
       Edit1.Text:=FloatToStr(FDQuery1.FieldByName('balance').AsFloat);
     bal:=FDQuery1.FieldByName('balance').AsFloat;
       Edit1.ReadOnly:=True;
     end;

   end
     else
     begin
    //  AssignFile(f,TPath.GetDocumentsPath + PathDelim +'id.txt');
     // Rewrite(f);
     // id:=IntToStr(Random(10000));
     // write(f,id);
     // CloseFile(f);
     // label1.Visible:=True;
     // Label1.Text:=Label1.Text+' '+ id;
      RadioButton1.Visible:=True;
      RadioButton2.Visible:=True;
      Edit2.Visible:=True;
      Button4.Visible:=True;
      Button1.Visible:=False;

          end;
   //sch update  begin

     FDQuery1.Close;
     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Add('select * from budget where active=3');
     FDQuery1.Open();

     while not FDQuery1.Eof do
     begin
               if FDQuery1.FieldByName('description').AsString<>'' then
              begin
         s:=FDQuery1.FieldByName('description').AsString;
         snew:= StringReplace(s,'S','',[rfignorecase]);
         temps.Add(snew);

         combobox3.Items.Assign(temps);
              end;
        if (FDQuery1.FieldByName('tdate').AsString<=FormatDateTime('yyyy-mm-dd',DateEdit1.Date)) and (FDQuery1.FieldByName('name').AsString<>'income') then
         begin
         trnid:=FDQuery1.FieldByName('trnid').AsInteger;
         FDQuery1.Edit;
         FDQuery1.FieldByName('active').AsInteger:=1  ;
         FDQuery1.FieldByName('moddate').AsString:=quotedstr(formatdatetime('yyyy-mm-dd',DateEdit1.Date));
         bal:=StrToFloat(Edit1.Text)-(fdquery1.FieldByName('expance').AsFloat);
         FDQuery1.FieldByName('balance').AsFloat:=bal;

         Edit1.Text:=FloatToStr(bal);

         end;

       FDQuery1.Next;

     end;
       end);
// sch update end
      temps.Free;
      FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select * from budget WHERE active=1 ORDER BY tdate DESC LIMIT 10';
FDQuery1.Open();
itmh:=ListView1.Items.Add;
 itmh.Purpose:=TListItemPurpose.Header;
 itmh.Text:='Category';

while not FDQuery1.Eof do
begin
 ListBox1.Items.Add(FDQuery1.FieldByName('trnid').AsString);

if FDQuery1.FieldByName('expance').AsFloat>0 then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('expance').AsString;

Date1:=StrToDateTime(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);

itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
Randomize;
itm.Data['Image5']:=ImageList1.Source.Items[Randomrange(6,12)].MultiResBitmap.Items[0].Bitmap;

 end;
   if FDQuery1.FieldByName('Income').AsFloat>0 then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=fdquery1.FieldByName('name').AsString;


itm.Data['Text2']:=fdquery1.FieldByName('Income').AsString;

Date1:=StrToDateTime(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);

itm.Data['Text4']:=fdquery1.FieldByName('description').AsString;
Randomize;
itm.Data['Image5']:=ImageList1.Source.Items[Randomrange(0,5)].MultiResBitmap.Items[0].Bitmap;

 end;
 FDQuery1.Next;
end;

end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
  if (checkBox1.IsChecked=false)  then business:=0;
   if (checkBox1.IsChecked) then business:=1;


end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
//Button2.Enabled:=true;
Label3.Visible:=False;
//MediaPlayer1.FileName:=System.IOUtils.TPath.GetDocumentsPath + PathDelim+'combo.wav';
//MediaPlayer1.Play;
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
{$IF DEFINED (MSWINDOWS)}
ComboBox1.Tag:=ComboBox1.Tag+1;
if ComboBox1.Tag=3 then
begin
Label3.Visible:=False;
ComboBox1.Visible:=False;
Edit9.Visible:=True;
end;
{$ENDIF}
end;

procedure TForm1.ComboBox1Gesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
Label3.Visible:=False;
ComboBox1.Visible:=False;
Edit9.Visible:=True;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
var
userjson,jsonsend:TStringStream;
jsarr:TJSONArray;
jspair:TJSONPair;
jsobj,jsobj1:TJSONObject;
jsval:TJSONValue;
s:string;
begin
 pd_acc_id:=plaid.Strings[ComboBox2.ItemIndex];
 jsval:=TJSONObject.ParseJSONValue(pd_res);
  jsobj:=jsval as TJSONObject;
  jspair:=jsobj.Get('accounts');
  jsarr:=jspair.JsonValue as TJSONArray;
  for I := 0 to jsarr.Size-1 do
    begin
       jsobj1:=jsarr.Get(i) as TJSONObject;
     if pd_acc_id=jsobj1.Values['account_id'].Value then
     begin
     jsobj:=jsobj1.GetValue('balances') as TJSONObject;
     Label11.Text:=jsobj.Values['available'].Value+' /'+jsobj.Values['current'].Value;
     label11.Visible:=true;
     end;



    end;

end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
Button6.Enabled:=true;
Form1.Caption:=IntToStr(ComboBox3.ItemIndex);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
bal:=StrTofloat(Edit1.Text);
IdHTTP1.Get(server+'c_b.php?ids='+id+'&balance='+floattostr(bal)+'&tdate='+tiduri.ParamsEncode( formatdatetime('yyyy-mm-dd',Date))+'&moddate='+tiduri.ParamsEncode(FormatDateTime('yyyy-mm-dd',Date))+'&devid='+devid);

if bal>0  then
begin
  ComboBox1.Enabled:=True;
//  Button2.Enabled:=false;
end;


end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
edit3.Font.Size:=18;
end;

procedure TForm1.Edit3ChangeTracking(Sender: TObject);
begin
Button2.Enabled:=true;
   if Edit3.Text='' then
   begin
   Button2.Enabled:=False;
   edit3.TextPrompt:='';
   Edit3.Font.Size:=18;
   end;
end;

procedure TForm1.FDConnection1AfterConnect(Sender: TObject);
begin
              try


      FDConnection1.ExecSQL('CREATE TABLE IF NOT EXISTS budget ( name TEXT,expance REAL,income REAL,tdate TEXT,ttime TEXT,balance REAL,upd TINYINT,active TINYINT,mobile TINYINT,description TEXT,moddate TEXT,devid INTEGER,recon TINYINT DEFAULT 0'+
      ',business TINYINT DEFAULT 0,trnid INTEGER PRIMARY KEY )');

  except
  on e:EFDDBEngineException do
  Memo1.Lines.Add(e.Message);
              end;

end;

procedure TForm1.FDConnection1BeforeConnect(Sender: TObject);
begin
{$IF DEFINED(IOS) or DEFINED(ANDROID) OR DEFINED(MSWINDOWS)}

  FDConnection1.Params.Values['Database'] :=
    TPath.GetDocumentsPath + PathDelim + 'MyDatabase.s3db';

  {$ENDIF}
end;

procedure TForm1.FDTable1BeforeInsert(DataSet: TDataSet);
begin
 trnidlist.Add(FDTable1.FieldByName('trnid').AsString);

end;

procedure TForm1.FormActivate(Sender: TObject);
 var
 lastdate:string;
 {$IFDEF android}
 intent:Jintent;
 {$ENDIF}
 tmpres,tmptrim,iname,tmp0:string;
pres,prestmp:TStringList;
a,i:Integer;
resp:TStringStream;
params,param2,temp,temp1,temp2,temp3:TStringList;
jsonsend:TStringStream;
s,s1,s2,s3,response_json:string;
userjson:TStringStream;
jsarr:TJSONArray;
jspair:TJSONPair;
jsobj,jsobj1:TJSONObject;
jsval:TJSONValue;

us, th_id,start_date,end_date:string;

sparse:TStringList;
lis,lish:TListViewItem;

 temps,cs:TStringList;
 snew:string;
 fmt:TFormatSettings;
 DATE1:TDate;
 res:string;
 begin
 {$IFDEF android}
 intent:=tjintent.Create;
 Intent.setAction(TJIntent.JavaClass.ACTION_VIEW);
 {$ENDIF}
 //try
 //IdHTTP1.Head(server+'test123.apk');
 //  if IdHTTP1.ResponseCode=200 then   Button10.Visible:=True;

 //  except
  // Button10.Visible:=False;
  // end;
 temps:=TStringList.Create;
 setting:=TStringList.Create;
 setting.Duplicates:=dupignore;
 cs:=TStringList.Create;
temps.Sorted:=True;
temps.Duplicates:=dupIgnore;
trnidlist:=TStringList.Create;
   IdHTTP1.ReadTimeout:=1500;
   fmt:=FormatSettings.Create;
fmt.ShortDateFormat:='yyyy-dd-mm';
fmt.DateSeparator:='-';
temp1:=TStringList.Create;
 if FileExists(tpath.GetDocumentsPath+pathdelim+'budget2.txt')=False then
 begin
 //AssignFile(setfile,tpath.GetDocumentsPath+pathdelim+'set.txt');
 //Rewrite(setfile);
 //write(setfile,'1');
// CloseFile(setfile);

    //setting.SaveToFile(tpath.GetDocumentsPath+pathdelim+'budget2.txt');
   TabItem3.IsSelected:=True;
 end;

//   if FileExists(tpath.GetDocumentsPath+pathdelim+'email.txt')=False then
 //begin
// AssignFile(email,tpath.GetDocumentsPath+pathdelim+'email.txt');
// Rewrite(email);

//     {$IF DEFINED(MSWINDOWS) }
//TDialogservice.InputQuery('email', ['please enter email/phone # or leave blank'], [''],
 //   procedure(const AResult: TModalResult; const AValues: array of string)

   //   begin
     //   case AResult of
  //        mrOk:
    //         Password:=AValues[0];
    //      mrCancel:
     //        Password:='';
     //   end;
     //   write(email,Password);
 //CloseFile(email);
  //    end
  //  );
   // {$ENDIF}
   // {$IF DEFINED(ANDROID) }
 //  if TPlatformServices.Current.SupportsPlatformService (IFMXDialogServiceAsync, IInterface (asi)) then
  // begin

   //    TDialogService.PreferredMode:=TDialogService.TPreferredMode.Sync;
  // Inputbox('email', 'please enter email/phone # or leave blank','',
  // procedure(const AResult: TModalResult; const AValues:  string)

  // begin
  //  case AResult of
   //  mrOk:
    //       begin
     //      Password:=AValues;

    //          assignFile(email,tpath.GetDocumentsPath+pathdelim+'email.txt');
// Rewrite(email);
  //      write(email,Password);
    //       CloseFile(email);

    //       end;

     //   mrCancel:
//           begin
  //      Password:='';
    //        end;

      //  end;

   //  end

  //  );
 // end;
  //{$ENDIF}



 //end;

 //  if FileExists(tpath.GetDocumentsPath+pathdelim+'email.txt')=True then
// begin
// AssignFile(email,tpath.GetDocumentsPath+pathdelim+'email.txt');
// Reset(email);
// read(email,emailinfo);
// CloseFile(email);


// end;
  TThread.Queue(nil,procedure
  var
  i1:Integer;
  htmlres1:string;

  begin
 result:=TMemoryStream.Create;
  DateEdit1.Date:=Now;
 FDBatchMove1.LogFileName:=TPath.GetDocumentsPath + PathDelim+'data.log';
  if (FileExists(TPath.GetDocumentsPath + PathDelim +'budget2.txt'))  then
   begin
   setting.LoadFromFile(tpath.GetDocumentsPath+pathdelim+'budget2.txt');
      tabitem1.IsSelected:=True;
      id:=setting.Values['id'];
      devid:=setting.Values['devid'];
      lintent:=TIntentServiceHelper.Create('test123serv',0,devid);
      emailinfo:=setting.Values['email'];
     res:=IdHTTP1.Get('http://budget123.000webhostapp.com/c_t.php?param2=11&devid='+devid);
    cs.Text:=res;
      //setting.Add(res);
     server:=setting.Values['server'];
     custom:=cs.Values['custom'];
     extra:=cs.Values['extra'];
     for cat := 0 to setting.Count do
      begin
    if setting.Values['custom_cat_'+IntToStr(cat)]<>'' then ComboBox1.Items.Add(setting.Values['custom_cat_'+IntToStr(cat)]);

      end;
     if custom<>''  then
     begin
     label12.Visible:=true;
     label12.Text:=custom;

     end;

     if setting.Values['server']<>cs.Values['server'] then
     begin
        setting.Values['server']:=cs.Values['server'];
       setting.SaveToFile(tpath.GetDocumentsPath+pathdelim+'budget2.txt');
     end;
       if setting.Values['version']<>cs.Values['version'] then
     begin
        setting.Values['version']:=cs.Values['version'];
          verstr:=StringReplace( setting.Values['version'],'.','',[rfReplaceAll]);
        {$IF defined (MSWINDOWS)}
         WebBrowser1.URL:=server+'test123.zip';
         WebBrowser1.Navigate;
         {$ENDIF}
         {$IF defined (ANDROID)}

            intent:=tjintent.Create;
            Intent.setAction(TJIntent.JavaClass.ACTION_VIEW);
            Intent.setData(StrToJURI(server+'testand'+verstr+'.zip'));
          SharedActivity.startActivity(Intent);
     //    WebBrowser1.URL:=server+'testand.zip';
      //   WebBrowser1.Navigate;
         {$ENDIF}
       setting.SaveToFile(tpath.GetDocumentsPath+pathdelim+'budget2.txt');
     end;
                   //balance alert begin


                 //balance alert end
    //  setting.SaveToFile(tpath.GetDocumentsPath+pathdelim+'budget2.txt');
    //  server:='http://ymcodecc-env.3ndhbkviy7.us-east-2.elasticbeanstalk.com/';
      seting:=StrToInt(setting.Values['seting']);
     if Pos('@',emailinfo)>0 then emailinfo:=emailinfo;
  if Pos('@',emailinfo)=0 then emailinfo:=emailinfo+'@tmomail.net';

     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Text:='SELECT * FROM budget ORDER BY moddate DESC LIMIT 1';
     FDQuery1.Open;
     lastdate:=FDQuery1.FieldByName('moddate').AsString;
        {$IF defined (MSWINDOWS)}
     Form1.Caption:=lastdate;
        {$ENDIF}
    //  AssignFile(f,TPath.GetDocumentsPath + PathDelim +'id.txt');
    //  Reset(f);
    //  read(f,id);
    //  CloseFile(f);

    //   AssignFile(f1,TPath.GetDocumentsPath + PathDelim +'devid.txt');
    //  Reset(f1);
    //  read(f1,devid);
    //  CloseFile(f1);


     IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=4&td='+lastdate+'&devid='+devid,result);

      result.Position:=0;
      FDBatchMoveTextReader1.Stream:=result;
   FDBatchMove1.Execute;
    //     trnidlist.Add(FDBatchMoveDataSetWriter1.DataSet.FieldByName('trnid').AsString);
     //  trnidlist.SaveToFile('trnid.txt');
     FDQuery1.Close;
     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Add('update budget set upd=1 where upd=0');
     FDQuery1.ExecSQL;


     FDQuery1.SQL.Clear;
     FDQuery1.Close;
     FDQuery1.SQL.Add('select * from budget where active=2');
     FDQuery1.Open();
     if FDQuery1.FieldByName('balance').AsString='' then Edit1.ReadOnly:=False;
     if FDQuery1.FieldByName('balance').AsFloat>0 then
     begin
     edit1.Width:=86;
     bal:=FDQuery1.FieldByName('balance').AsFloat;
     Edit1.Text:=FloatToStr(FDQuery1.FieldByName('balance').AsFloat);
       Edit1.ReadOnly:=True;
     end;
      FDQuery1.Close;
     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Add('select * from budget where active=3');
     FDQuery1.Open();

     while not FDQuery1.Eof do
     begin
               if FDQuery1.FieldByName('description').AsString<>'' then
              begin
         s:=FDQuery1.FieldByName('description').AsString;
         snew:= StringReplace(s,'S','',[rfignorecase]);
         temps.Add(snew);

         combobox3.Items.Assign(temps);
              end;
         if (FDQuery1.FieldByName('tdate').AsString<=FormatDateTime('yyyy-mm-dd',DateEdit1.Date)) and (FDQuery1.FieldByName('name').AsString<>'income') and(trnidlist.IndexOf(FDQuery1.FieldByName('trnid').AsString)=-1) then
         begin
         trnid:=FDQuery1.FieldByName('trnid').AsInteger;
         FDQuery1.Edit;
         FDQuery1.FieldByName('active').AsInteger:=1  ;
         FDQuery1.FieldByName('moddate').AsString:=quotedstr(formatdatetime('yyyy-mm-dd',DateEdit1.Date));
         bal:=StrToFloat(Edit1.Text)-(fdquery1.FieldByName('expance').AsFloat);

        FDQuery1.FieldByName('balance').AsFloat:=bal;
        IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=7&trnid='+inttostr(trnid)+'&devid='+devid);
          Edit1.Text:=FloatToStr(FDQuery1.FieldByName('balance').AsFloat);
          if emailinfo<>'' then
          begin
           IdMessage1.From.Address := 'ymcodeinfo@gmail.com';
    IdMessage1.From.Name := 'budget 2';
    IdMessage1.ReplyTo.EMailAddresses := IdMessage1.From.Address;
    IdMessage1.Recipients.Add.Text := emailinfo;
    IdMessage1.Subject := 'scheduled payment';
    IdMessage1.Encoding := meMIME;
    idmessage1.Body.Text:='following payment has bieng recorded: '+fdquery1.FieldByName('name').AsString+' for $'+fdquery1.FieldByName('expance').AsString;
    idsmtp1.Connect;
    idsmtp1.Send(IdMessage1);
    idsmtp1.Disconnect();

    // Configuração do corpo do email (TIdText)

          end        ;


         end;

       FDQuery1.Next;

     end;
         FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select * from budget WHERE active=1 ORDER BY tdate DESC LIMIT 10';
FDQuery1.Open();
itmh:=ListView1.Items.Add;
 itmh.Purpose:=TListItemPurpose.Header;
 itmh.Text:='Category';

while not FDQuery1.Eof do
begin
 ListBox1.Items.Add(FDQuery1.FieldByName('trnid').AsString);

if (FDQuery1.FieldByName('expance').AsFloat>0) and(seting=1) then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=utf8decode( fdquery1.FieldByName('name').AsString);
TListItemText(itm.Objects.FindDrawable('Text1')).TextColor:=TAlphaColorRec.Red;

itm.Data['Text2']:=fdquery1.FieldByName('expance').AsString;

Date1:=StrToDateTime(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);

itm.Data['Text4']:=utf8decode( fdquery1.FieldByName('description').AsString);

Randomize;
itm.Data['Image5']:=ImageList1.Source.Items[Randomrange(6,12)].MultiResBitmap.Items[0].Bitmap;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;


 end;
   if (FDQuery1.FieldByName('Income').AsFloat>0) and(seting=1) then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=utf8decode( fdquery1.FieldByName('name').AsString);
TListItemText(itm.Objects.FindDrawable('Text1')).TextColor:=TAlphaColorRec.Green;

itm.Data['Text2']:=fdquery1.FieldByName('Income').AsString;
TListItemText(itm.Objects.FindDrawable('Text2')).TextColor:=TAlphaColorRec.Green;

Date1:=StrToDateTime(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);

itm.Data['Text4']:=utf8decode( fdquery1.FieldByName('description').AsString);
Randomize;
itm.Data['Image5']:=ImageList1.Source.Items[Randomrange(0,5)].MultiResBitmap.Items[0].Bitmap;
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;

 end;
 if (FDQuery1.FieldByName('expance').AsFloat>0) and(seting=0) then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=utf8decode( fdquery1.FieldByName('name').AsString);


itm.Data['Text2']:=fdquery1.FieldByName('expance').AsString;

Date1:=StrToDateTime(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);

itm.Data['Text4']:=utf8decode( fdquery1.FieldByName('description').AsString);
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;

 end;
   if (FDQuery1.FieldByName('Income').AsFloat>0) and(seting=0) then
begin
itm:=ListView1.Items.Add;

itm.Data['Text1']:=utf8decode( fdquery1.FieldByName('name').AsString);
TListItemText(itm.Objects.FindDrawable('Text1')).TextColor:=TAlphaColorRec.Green;


itm.Data['Text2']:=fdquery1.FieldByName('Income').AsString;
TListItemText(itm.Objects.FindDrawable('Text2')).TextColor:=TAlphaColorRec.Green;

Date1:=StrToDateTime(FDQuery1.FieldByName('tdate').AsString,fmt);
itm.Data['Text3']:=formatdatetime('ddddd',date1);

itm.Data['Text4']:=utf8decode( fdquery1.FieldByName('description').AsString);
if FDQuery1.FieldByName('recon').AsInteger=1 then itm.Data['Image5']:=  ImageList1.Source.Items[13].MultiResBitmap.Items[0].Bitmap;

 end;

 FDQuery1.Next;
end;



     end;

                //sch update  begin
     if (setting.Values['access_token']<>'') and (extra<>'')  then
            begin


 access_token:=setting.Values['access_token'];
  jsonsend:=TStringStream.Create('{"client_id":'+pd_client_id+',"secret":'+pd_secret_dev+',"access_token":'+access_token+'}',TEncoding.UTF8);
 response_json:=NetHTTPRequest1.Post('https://development.plaid.com/accounts/balance/get',jsonsend).ContentAsString();
   pd_res:=response_json;
   jsval:=TJSONObject.ParseJSONValue(response_json);
  jsobj:=jsval as TJSONObject;
  jspair:=jsobj.Get('accounts');
  jsarr:=jspair.JsonValue as TJSONArray;
       for I1 := 0 to jsarr.Size-1 do
    begin

      jsobj1:=jsarr.Get(i1) as TJSONObject;

     // htmlres1:=IdHTTP1.Get(server+'c_t.php?param2=14&accid='+id+'&devid='+devid);
      jsobj:=jsobj1.GetValue('balances') as TJSONObject;

      if strToFloat( jsobj.Values['available'].Value)<= StrToFloat(extra) then
      begin
      ShowMessage('balance alert');
      label12.Visible:=true;
      label12.FontColor:= TAlphaColorRec.Red;
      label12.Text:='balance alert';

      end;
    //  ComboBox2.Items.Add(jsobj1.Values['name'].Value);
    //  plaid.Add(jsobj1.Values['account_id'].Value);
            end;

         //button11.Text:='Get Transactions';
        // combobox2.Visible:=true;
    end;

       end);
// sch update end
      temps.Free;


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 {$IF DEFINED(ANDROID)}
IdOpenSSLSetLibPath(TPath.GetDocumentsPath) ;
fservice:=TLocalServiceConnection.Create;
fservice.StartService('test123serv');
{$ENDIF}
business:=0;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
trnidlist.Free;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
Deletefile(TPath.GetDocumentsPath + PathDelim +'budget2.txt');
//Deletefile(TPath.GetDocumentsPath + PathDelim +'email.txt');
FDConnection1.ExecSQL('DROP table if exists budget');
FDConnection1.ExecSQL('DROP table if exists table1');

end;

procedure TForm1.Label3Gesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
Label3.Visible:=False;
ComboBox1.Visible:=False;
Edit9.Visible:=True;
end;

procedure TForm1.ListView1DblClick(Sender: TObject);
var
fmt1:TFormatSettings;
begin
   fmt1:=FormatSettings.Create;
fmt1.ShortDateFormat:='yyyy-dd-mm';
fmt1.DateSeparator:='-';
FDQuery1.SQL.Clear;
 FDQuery1.SQL.Add('select * from budget where trnid='+listbox1.Items[ListBox1.ItemIndex]);
 FDQuery1.Open();
 TabItem2.IsSelected:=True;
 while not FDQuery1.eof do
 begin
   Edit6.Text:=FDQuery1.FieldByName('name').AsString;
 if FDQuery1.FieldByName('expance').AsFloat>0 then  Edit7.Text:=FDQuery1.FieldByName('expance').AsString;
  if FDQuery1.FieldByName('income').AsFloat>0 then  Edit7.Text:=FDQuery1.FieldByName('income').AsString;
   Edit8.Text:=FDQuery1.FieldByName('description').AsString;

   DateEdit4.Date:=StrToDate( FDQuery1.FieldByName('tdate').AsString,fmt1);
   FDQuery1.Next;
 end;
end;

procedure TForm1.ListView1DeleteItem(Sender: TObject; AIndex: Integer);
begin
if calc=0 then
begin
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('UPDATE budget SET active=0 WHERE trnid='+listbox1.Items[ListBox1.ItemIndex]);
FDQuery1.ExecSQL;
IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=5&trnid='+listbox1.Items[ListBox1.ItemIndex]);

bal:=StrToFloat(Edit1.Text)+amount;
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('update budget set balance='+floattostr(bal)+',tdate='+formatdatetime('yyyy-mm-dd',DateEdit1.Date)+' where active=2');
FDQuery1.ExecSQL;
  Edit1.Text:=FloatToStr(bal);

    end;
if calc=1 then
begin
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('UPDATE budget SET active=0 WHERE trnid='+listbox1.Items[ListBox1.ItemIndex]);
FDQuery1.ExecSQL;
IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=5&trnid='+listbox1.Items[ListBox1.ItemIndex]);

bal:=StrToFloat(Edit1.Text)-amount;
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('update budget set balance='+floattostr(bal)+',tdate='+formatdatetime('yyyy-mm-dd',DateEdit1.Date)+' where active=2');
FDQuery1.ExecSQL;
   Edit1.Text:=FloatToStr(bal);
   end;
end;

procedure TForm1.ListView1Gesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
  var

  fmt1:TFormatSettings;
  begin
   fmt1:=FormatSettings.Create;
fmt1.ShortDateFormat:='yyyy-dd-mm';
fmt1.DateSeparator:='-';
FDQuery1.SQL.Clear;
 FDQuery1.SQL.Add('select * from budget where trnid='+listbox1.Items[ListBox1.ItemIndex]);
 FDQuery1.Open();
 TabItem2.IsSelected:=True;
 while not FDQuery1.eof do
 begin
   Edit6.Text:=FDQuery1.FieldByName('name').AsString;
 if FDQuery1.FieldByName('expance').AsFloat>0 then  Edit7.Text:=FDQuery1.FieldByName('expance').AsString;
  if FDQuery1.FieldByName('income').AsFloat>0 then  Edit7.Text:=FDQuery1.FieldByName('income').AsString;
   Edit8.Text:=FDQuery1.FieldByName('description').AsString;

   DateEdit4.Date:=StrToDate( FDQuery1.FieldByName('tdate').AsString,fmt1);
   FDQuery1.Next;
 end;
end;

procedure TForm1.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
Button6.Enabled:=True;
ListBox1.ItemIndex:=ListView1.ItemIndex-1;
 FDQuery1.SQL.Clear;
 FDQuery1.SQL.Add('select * from budget where trnid='+listbox1.Items[ListBox1.ItemIndex]);
 FDQuery1.Open();
 if FDQuery1.FieldByName('expance').AsFloat>0 then
 begin
 calc:=0;
 amount:=FDQuery1.FieldByName('expance').AsFloat;
 end;
if FDQuery1.FieldByName('income').AsFloat>0 then
begin
calc:=1;
 amount:=FDQuery1.FieldByName('income').AsFloat;

end;
end;

procedure TForm1.ListView1UpdateObjects(const Sender: TObject;
  const AItem: TListViewItem);
  var
  txl,txl1,txl2:tlistitemtext;

  begin
txl := AItem.Objects.FindDrawable('Text1') As TListItemText;
txl1 := AItem.Objects.FindDrawable('Text2') As TListItemText;
if (txl<>nil) and (txl.Text<>'Income') then
begin
 txl.TextColor:=TAlphaColorRec.Blue;
 txl1.TextColor:=TAlphaColorRec.Red;
end  ;
 if (txl<>nil) and (txl.Text='Income') then

   begin
   txl.TextColor:=TAlphaColorRec.Blue;
 txl1.TextColor:=TAlphaColorRec.Green;
end ;

  end;



procedure TForm1.ListView2ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
  var
nowdate,predate:string;
date1:TDate;
fmt:TFormatSettings;
itm,ith:TListViewItem;
itl:TListItemText;
pur:TListItemPurpose;
inum,rnum:Integer;
sinum,srnum:string;
s,s1:string;
  begin
  fmt:=FormatSettings.Create;
fmt.ShortDateFormat:='yyyy-dd-mm';
fmt.DateSeparator:='-';

  Label6.Visible:=False;
Label7.Visible:=False;
Label8.Visible:=False;
Label9.Visible:=False;
 Edit6.Visible:=False;
 Edit7.Visible:=False;
 Edit8.Visible:=False;
 DateEdit4.Visible:=False;
 ListView3.Visible:=True;

    pd_date:=plaid_date[trunc( ListView2.ItemIndex/2)];
    date1:=StrToDate(pd_date,fmt);
 nowdate:=FormatDateTime('yyyy-mm-dd',date1);

 predate:=FormatDateTime('yyyy-mm-dd',IncMonth(date1,-2));
 inum:=Trunc(StrToFloat(AItem.Detail));
   sinum:=IntToStr(inum);
   rnum:=Round(StrToFloat(AItem.Detail));
   srnum:=IntToStr(rnum);
 if StrToFloat( AItem.Detail)>0 then
    begin
     inum:=Trunc(StrToFloat(AItem.Detail));
      trnidlist.Clear;
      sinum:=IntToStr(inum);
   rnum:=Round(StrToFloat(AItem.Detail));
   srnum:=IntToStr(rnum);
 FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select * from budget WHERE (strftime(''%Y-%m-%d'',tdate) BETWEEN '+quotedstr(predate)+' and '+quotedstr(nowdate)+ ' and active=1 and expance='+sinum+'  and recon=0) or (strftime(''%Y-%m-%d'',tdate) BETWEEN '+quotedstr(predate)+' and '+quotedstr(nowdate)+ ' and active=1 and expance= '+srnum+' and recon=0) order by date(tdate) DESC, time(ttime) DESC';
FDQuery1.Open();
  while not FDQuery1.Eof do
  begin

    itm:=ListView3.Items.Add;
    itm.Text:=FDQuery1.FieldByName('name').AsString;
    itm.Detail:=FDQuery1.FieldByName('expance').AsString;
    ith:=ListView3.Items.Add;
    ith.Text:=FDQuery1.FieldByName('tdate').AsString;
    ith.Purpose:=TListItemPurpose.Header;
     trnidlist.Add(FDQuery1.FieldByName('trnid').AsString);
    FDQuery1.Next;

  end;
    end;
  if StrToFloat( AItem.Detail)<0 then
    begin
   inum:=Trunc(StrToFloat(AItem.Detail));
      trnidlist.Clear;
     sinum:=IntToStr(Abs( inum));
   rnum:=Round(StrToFloat(AItem.Detail));
   srnum:=IntToStr(Abs( rnum));
 FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Text:='select * from budget WHERE (strftime(''%Y-%m-%d'',tdate) BETWEEN '+quotedstr(predate)+' and '+quotedstr(nowdate)+ ' and active=1 and income='+sinum+' and recon=0) or (strftime(''%Y-%m-%d'',tdate) BETWEEN '+quotedstr(predate)+' and '+quotedstr(nowdate)+ ' and active=1 and income='+srnum+' and recon=0) order by date(tdate) DESC, time(ttime) DESC';
FDQuery1.Open();
  while not FDQuery1.Eof do
  begin

    itm:=ListView3.Items.Add;
    itm.Text:=FDQuery1.FieldByName('name').AsString;
    itm.Detail:=FDQuery1.FieldByName('income').AsString;
    ith:=ListView3.Items.Add;
    ith.Text:=FDQuery1.FieldByName('tdate').AsString;
    ith.Purpose:=TListItemPurpose.Header;
     trnidlist.Add(FDQuery1.FieldByName('trnid').AsString);
    FDQuery1.Next;

  end;
    end;

end;

procedure TForm1.ListView3ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
  var
  ait:string;
  dname,ddate,dtime,dmoddate:string;
  begin
ait:=trnidlist.Strings[ListView3.Selected.Index];
//FDQuery1.Close;
//FDQuery1.SQL.Clear;
//FDQuery1.SQL.Text:='update budget set recon=1 where trnid='+ait;;
//FDQuery1.ExecSQL;
//FDTable1.Close;
if FDTable1.CanModify then
     begin

     // FDTable1.Close;
     Form1.Caption:='true';
   FDQuery1.Close;
   FDQuery1.SQL.Clear;
   FDQuery1.SQL.Text:='update budget set recon=1,description= '+QuotedStr( ListView2.Items[ListView2.Selected.Index].Text)+' where trnid='+ait ;
   FDQuery1.ExecSQL;
   IdHTTP1.Get(server+'c_t.php?param='+id+'&param2=12&trnid='+ait+'&desc='+TIdURI.ParamsEncode( ListView2.Items[ListView2.Selected.Index].Text));

   end;
//    listview3.Items.Delete(aitem.Index);
 //   trnidlist.Delete(aitem.Index);
   end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
// Popup1.Placement:=TPlacement.TopCenter;
 //Popup1.IsOpen:=True;
 //Popup1.Popup();
   form4.Show;
end;


procedure TForm1.Switch1Switch(Sender: TObject);
var
st:textfile;
begin
if Switch1.IsChecked  then
begin
 setting.Values['seting']:=IntToStr(1);
  setting.SaveToFile(tpath.GetDocumentsPath+pathdelim+'budget2.txt');

 // AssignFile(st,tpath.GetDocumentsPath+pathdelim+'set.txt');
 // Rewrite(st);
 // write(st,'1');
 // closefile(st);
end;
if Switch1.IsChecked=false  then
begin
   setting.Values['seting']:=IntToStr(0);
 setting.SaveToFile(tpath.GetDocumentsPath+pathdelim+'budget2.txt');
 // AssignFile(st,tpath.GetDocumentsPath+pathdelim+'set.txt');
 // Rewrite(st);
 // write(st,'0');
 // CloseFile(st);
end;
end;

procedure TForm1.TabItem2Click(Sender: TObject);
var
tmpres,tmptrim,iname,tmp0:string;
pres,prestmp:TStringList;
a,i:Integer;
resp:TStringStream;
params,param2,temp,temp1,temp2,temp3:TStringList;
jsonsend:TStringStream;
s,s1,s2,s3,response_json:string;
userjson:TStringStream;
jsarr:TJSONArray;
jspair:TJSONPair;
jsobj,jsobj1:TJSONObject;
jsval:TJSONValue;

us, th_id,start_date,end_date:string;

sparse:TStringList;
lis,lish:TListViewItem;

begin
pres:=TStringList.Create;
prestmp:=TStringList.Create;

pres.LineBreak:='}}';
pres.StrictDelimiter:=True;
prestmp.Delimiter:=',';
prestmp.StrictDelimiter:=true;
prestmp.NameValueSeparator:=':';
params:=TStringList.Create;
temp:=TStringList.Create;
temp1:=TStringList.Create;
temp2:=TStringList.Create;
temp3:=TStringList.Create;
params.Delimiter:='&';
params.StrictDelimiter:=True;
param2:=TStringList.Create;
param2.Delimiter:='}';
param2.NameValueSeparator:=':';
param2.StrictDelimiter:=True;
plaid:=TStringList.Create;
temp.NameValueSeparator:=':';
temp1.NameValueSeparator:=':';
temp1.Delimiter:=',';
temp1.StrictDelimiter:=True;
temp2.NameValueSeparator:=':';
temp3.NameValueSeparator:=':';
  if setting.Values['access_token']<>'' then
            begin


 access_token:=setting.Values['access_token'];
  jsonsend:=TStringStream.Create('{"client_id":'+pd_client_id+',"secret":'+pd_secret_dev+',"access_token":'+access_token+'}',TEncoding.UTF8);
 response_json:=NetHTTPRequest1.Post('https://development.plaid.com/accounts/balance/get',jsonsend).ContentAsString();
   pd_res:=response_json;
   jsval:=TJSONObject.ParseJSONValue(response_json);
  jsobj:=jsval as TJSONObject;
  jspair:=jsobj.Get('accounts');
  jsarr:=jspair.JsonValue as TJSONArray;
       for I := 0 to jsarr.Size-1 do
    begin

      jsobj1:=jsarr.Get(i) as TJSONObject;
      ComboBox2.Items.Add(jsobj1.Values['name'].Value);
      plaid.Add(jsobj1.Values['account_id'].Value);
            end;

         button11.Text:='Get Transactions';
         combobox2.Visible:=true;
    end;

end;

procedure TForm1.TabItem3Click(Sender: TObject);
begin
TabItem3.Tag:=TabItem3.Tag+1;
if TabItem3.Tag=7 then
begin
  Edit12.Visible:=True;
  Button12.Visible:=True;
  memo2.Visible:=false;
  end;


 if FileExists(tpath.GetDocumentsPath+pathdelim+'budget2.txt')=true then
 begin
  button14.Enabled:=true;
  button15.Enabled:=true;

   setting.LoadFromFile(tpath.GetDocumentsPath+pathdelim+'budget2.txt');
   Edit2.Text:=setting.Values['id'];
   Edit5.Text:=setting.Values['email'];
   if setting.Values['user']='1' then RadioButton1.IsChecked:=True;
   if setting.Values['user']='2' then RadioButton2.IsChecked:=True;
   if setting.Values['seting']='0' then Switch1.IsChecked:=False;
   if setting.Values['seting']='1' then RadioButton2.IsChecked:=True;
 end;
end;

procedure TForm1.WebBrowser1DidFinishLoad(ASender: TObject);
var
params,temp,param2:TStringList;
response,response_json,s:string;
jsonsend:TStringStream;

begin
params:=TStringList.Create;
temp:=TStringList.Create;
param2:=TStringList.Create;
param2.Delimiter:='}';
param2.NameValueSeparator:=':';
params.Delimiter:='&';
temp.NameValueSeparator:=':';
params.StrictDelimiter:=True;
 temp.StrictDelimiter:=true;
 param2.StrictDelimiter:=true;
{$IF defined (MSWINDOWS)}
if Pos('public_token',WebBrowser1.URL)>0 then
 {$ENDIF}
 {$IF defined (ANDROID)}
 if Pos('public_token',WebBrowser1.URL)>0 then
  {$ENDIF}
begin
response:=TIdURI.URLDecode(WebBrowser1.url);
params.DelimitedText:=response;
public_token:=params.Values['public_token'];
jsonsend:=TStringStream.Create('{"client_id":'+pd_client_id+',"secret":'+pd_secret_dev+',"public_token":"'+public_token+'"}',TEncoding.UTF8);
response_json:=NetHTTPRequest1.Post('https://development.plaid.com/item/public_token/exchange',jsonsend).ContentAsString();
  s:= StringReplace(response_json,' ','',[rfReplaceAll]);
 param2.DelimitedText:=s;
 temp.Text:=param2.ValueFromIndex[0];

   access_token:=StringReplace(temp[0],',','',[rfReplaceAll]);
   setting.Add('access_token='+access_token);
  setting.SaveToFile(TPath.GetDocumentsPath + PathDelim +'budget2.txt');
end;

end;

end.
