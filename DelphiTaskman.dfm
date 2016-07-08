object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 426
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 352
    Width = 56
    Height = 21
    Caption = 'Subject'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 601
    Height = 283
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        ReadOnly = True
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date'
        ReadOnly = True
        Width = 164
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'User'
        ReadOnly = True
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Subject'
        ReadOnly = True
        Width = 257
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 297
    Width = 75
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 297
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 232
    Top = 297
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
  end
  object Button4: TButton
    Left = 344
    Top = 297
    Width = 89
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 4
  end
  object Button5: TButton
    Left = 344
    Top = 328
    Width = 89
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 8
    Top = 379
    Width = 601
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TextHint = 'Write your subject here'
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sqlpassword;Persist Security Info=T' +
      'rue;User ID=sqluser;Initial Catalog=DelphiTaskManager;Data Sourc' +
      'e=T175-W10-VB\SQLEXPRESS;Use Procedure for Prepare=1;Auto Transl' +
      'ate=True;Packet Size=4096;Workstation ID=T175-W10-VB;Use Encrypt' +
      'ion for Data=False;Tag with column collation when possible=False'
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 8
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 48
    Top = 296
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorLocation = clUseServer
    Parameters = <>
    Left = 120
    Top = 296
  end
end
