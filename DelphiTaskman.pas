unit DelphiTaskman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.ComCtrls, IdBaseComponent, IdDateTimeStamp;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM Tasklist');
  ADOQuery1.Active:=True;
  except
  on e:Exception do
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  try
    if (Trim(Edit1.Text)='') then
      begin
        exit;
      end;
    ADOQuery1.Insert;
    ADOQuery1.FieldByName('Subject').AsString:=Edit1.Text;
    Edit1.Clear;
  except
    on e:Exception do
  end;
  end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  try
  TDrawGrid(DBGrid1).ScrollBars:= ssVertical;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM Tasklist');
  ADOQuery1.Active:=True;
  except
    on e:Exception do
  end;
end;

end.

