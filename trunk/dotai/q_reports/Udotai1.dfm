object frmPhieudotai: TfrmPhieudotai
  Left = 0
  Top = 0
  Caption = 'frmPhieudotai'
  ClientHeight = 656
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 24
    Top = 0
    Width = 23
    Height = 22
    OnClick = SpeedButton1Click
  end
  object ScrollBox1: TScrollBox
    Left = 8
    Top = 24
    Width = 785
    Height = 624
    TabOrder = 0
    object QuickRep1: TQuickRep
      Left = 3
      Top = 3
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      BeforePrint = QuickRep1BeforePrint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Continuous = False
      Page.Values = (
        127.000000000000000000
        2970.000000000000000000
        127.000000000000000000
        2100.000000000000000000
        157.000000000000000000
        127.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stQRP
      PreviewLeft = 0
      PreviewTop = 0
      object QRSubDetail1: TQRSubDetail
        Left = 59
        Top = 48
        Width = 687
        Height = 1007
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = True
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = True
        Size.Values = (
          2664.354166666667000000
          1817.687500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        Master = QuickRep1
        PrintBefore = False
        PrintIfEmpty = True
        object QRRichText3: TQRRichText
          Left = 25
          Top = 4
          Width = 650
          Height = 985
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2606.145833333333000000
            66.145833333333340000
            10.583333333333330000
            1719.791666666667000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AutoStretch = True
          Color = clWindow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Lines.Strings = (
            'RichEdit1')
          ParentRichEdit = RichEdit1
        end
        object RichEdit2: TRichEdit
          Left = 25
          Top = 68
          Width = 650
          Height = 45
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            'RichEdit1')
          ParentFont = False
          TabOrder = 1
        end
      end
      object QRSysData1: TQRSysData
        Left = 651
        Top = 1057
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1722.437500000000000000
          2796.645833333333000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Text = 'Trang:  '
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object RichEdit1: TRichEdit
        Left = 84
        Top = 52
        Width = 650
        Height = 45
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'RichEdit1')
        ParentFont = False
        TabOrder = 2
      end
    end
  end
end
