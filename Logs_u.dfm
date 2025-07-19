object frmLogs: TfrmLogs
  Left = 0
  Top = 0
  Caption = 'frmLogs'
  ClientHeight = 750
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object pnlLBackground: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 761
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object shpLBlock1: TShape
      Left = 0
      Top = 0
      Width = 777
      Height = 49
      Brush.Color = 5787685
    end
    object lblLTLogs: TLabel
      Left = 197
      Top = 8
      Width = 382
      Height = 33
      Caption = 'SWIFT SHIP LOGISTICS (LOGS)'
      Color = 5787685
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object shpLBlock2: TShape
      Left = 15
      Top = 55
      Width = 747
      Height = 578
      Brush.Color = clGray
      Shape = stRoundRect
    end
    object shpLBlock3: TShape
      Left = 172
      Top = 647
      Width = 433
      Height = 90
      Brush.Color = clGray
      Shape = stRoundRect
    end
    object memLLogs: TMemo
      Left = 40
      Top = 80
      Width = 697
      Height = 521
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4009752
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object btnLBack: TButton
      Left = 188
      Top = 663
      Width = 201
      Height = 57
      Caption = 'BACK TO SETTINGS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -20
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnLBackClick
    end
    object btnLClearLogs: TButton
      Left = 415
      Top = 663
      Width = 169
      Height = 57
      Caption = 'CLEAR LOGS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -20
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnLClearLogsClick
    end
  end
end
