unit Logs_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmLogs = class(TForm)
    pnlLBackground: TPanel;
    shpLBlock1: TShape;
    lblLTLogs: TLabel;
    memLLogs: TMemo;
    shpLBlock2: TShape;
    btnLBack: TButton;
    btnLClearLogs: TButton;
    shpLBlock3: TShape;
    procedure FormShow(Sender: TObject);
    procedure btnLClearLogsClick(Sender: TObject);
    procedure btnLBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogs: TfrmLogs;

implementation

uses
  SwiftShip_u;

var
  tfLogs: TextFile;

{$R *.dfm}

procedure TfrmLogs.btnLBackClick(Sender: TObject);
begin
  frmLogs.Hide;
end;

procedure TfrmLogs.btnLClearLogsClick(Sender: TObject);
var
  iChoice: Integer;
begin
  iChoice := MessageDlg('Are You Sure You Want To Clear All Logs?',
    mtConfirmation, [mbYes, mbNo], 0);

  if (iChoice = mrNo) OR (iChoice = mrCancel) then
    Exit
  else
  begin
    AssignFile(tfLogs, 'TextFiles\Logs.txt');
    Rewrite(tfLogs);
    CloseFile(tfLogs);
    memLLogs.Lines.Clear;
  end;
end;

procedure TfrmLogs.FormShow(Sender: TObject);
var
  sLine: String;
begin
  AssignFile(tfLogs, 'TextFiles\Logs.txt');
  if FileExists('TextFiles\Logs.txt') then
    Reset(tfLogs)
  else
    Rewrite(tfLogs);

  memLLogs.Lines.Clear;

  while not(Eof(tfLogs)) do
  begin
    readln(tfLogs, sLine);
    memLLogs.Lines.Add(sLine);
  end;

  CloseFile(tfLogs);
end;

end.
