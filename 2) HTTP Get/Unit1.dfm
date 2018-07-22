object Form1: TForm1
  Left = 193
  Top = 125
  Width = 757
  Height = 509
  Caption = 'HTTP test'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 56
    Top = 24
    Width = 625
    Height = 289
    Alignment = taCenter
    Lines.Strings = (
      #1058#1091#1090' '#1073#1091#1076#1077#1090' URL')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 56
    Top = 344
    Width = 625
    Height = 41
    Caption = #1055#1086#1083#1091#1095#1080#1090#1100' URL'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 56
    Top = 408
    Width = 625
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 2
    OnClick = Button2Click
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
  end
end
