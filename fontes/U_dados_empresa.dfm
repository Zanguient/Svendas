object F_dadosEmpresa: TF_dadosEmpresa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Dados da empresa'
  ClientHeight = 253
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 200
    Width = 420
    Height = 45
    DataSource = ds_dadosEmpresa
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 34
    Align = alTop
    BorderStyle = bsSingle
    Caption = 'Dados Da Empresa'
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 34
    Width = 442
    Height = 160
    Align = alTop
    BevelOuter = bvLowered
    Caption = 'Panel2'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 45
      Height = 13
      Caption = 'Endereco'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 101
      Width = 24
      Height = 13
      Caption = 'Fone'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 27
      Width = 228
      Height = 21
      CharCase = ecUpperCase
      DataField = 'emp_nome'
      DataSource = ds_dadosEmpresa
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 75
      Width = 401
      Height = 21
      CharCase = ecUpperCase
      DataField = 'emp_endereco'
      DataSource = ds_dadosEmpresa
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 115
      Width = 264
      Height = 21
      DataField = 'emp_fone'
      DataSource = ds_dadosEmpresa
      TabOrder = 2
    end
  end
  object ds_dadosEmpresa: TDataSource
    DataSet = dm.SQL_empresa
    Left = 232
    Top = 96
  end
end
