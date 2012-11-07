unit Udotai1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, Buttons, qrpctrls, Grids, ValEdit,
  StdCtrls, ComCtrls, RichEdit;

type
  TfrmPhieudotai = class(TForm)
    SpeedButton1: TSpeedButton;
    ScrollBox1: TScrollBox;
    RichEdit1: TRichEdit;
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRRichText3: TQRRichText;
    QRSysData1: TQRSysData;
    RichEdit2: TRichEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    Checkbox: array[9..56] of string;
    QRBandTemp: TQRBand;
    Function VarString(index: integer): string;
    Function GetValue(S: String): string;
    Procedure StoCheckBox(S: String);
  public
    { Public declarations }
  end;

var
  frmPhieudotai: TfrmPhieudotai;

implementation

uses PageControil, RP_dotai;

{$R *.dfm}

Procedure TfrmPhieudotai.StoCheckBox(S: String);
var
  i: integer;
  s2, s21: string;
begin
    s2 := frmPageControl.Filed1.Checkbox;
    for i := 9 to 56 do
    begin
      if length(s2) >= 1 then
        begin
          s21 := s2[1];
          if s21 = '-' then
          begin
            s21 := s21 + s2[2];
            delete(s2, 1, 2);
          end
          else
            delete(s2, 1, 1);
        end
        else
          s21 := '0';
      Checkbox[i] := s21;
    end;
    for i := 9 to 56 do
    if Checkbox[i] = '-1' then
      Checkbox[i] := 'x'
    else
      Checkbox[i] := ' ';
end;

procedure TfrmPhieudotai.SpeedButton1Click(Sender: TObject);
var
  i, j: integer;
  s: ansistring;
  s1: ansistring;
  a: TDotaiTBANgay;
  f: TMemoryStream;
begin
  //RichEdit1.PlainText := false;
  f := TMemoryStream.Create;
  f.LoadFromFile('q_reports\mau_temp\KTngayTBA phu tai.rtf');
  f.Seek(0,0);
  setlength(s1, f.Size);
  f.ReadBuffer(Pointer(s1)^, f.Size);
  s := s1;

  a := frmPageControl.Filed1;
  StoCheckBox(a.Checkbox);
    begin
        s := StringReplace(S, '[9]', Checkbox[9], [rfReplaceAll]);
        s := StringReplace(S, '[10]', Checkbox[10], [rfReplaceAll]);
        s := StringReplace(S, '[11]', Checkbox[11], [rfReplaceAll]);
        s := StringReplace(S, '[12]', Checkbox[12], [rfReplaceAll]);
        s := StringReplace(S, '[13]', Checkbox[13], [rfReplaceAll]);
        s := StringReplace(S, '[14]', Checkbox[14], [rfReplaceAll]);
        s := StringReplace(S, '[15]', Checkbox[15], [rfReplaceAll]);
        s := StringReplace(S, '[16]', Checkbox[16], [rfReplaceAll]);
        s := StringReplace(S, '[17]', Checkbox[17], [rfReplaceAll]);
        s := StringReplace(S, '[18]', Checkbox[18], [rfReplaceAll]);
        s := StringReplace(S, '[19]', Checkbox[19], [rfReplaceAll]);
        s := StringReplace(S, '[20]', Checkbox[20], [rfReplaceAll]);
        s := StringReplace(S, '[21]', Checkbox[21], [rfReplaceAll]);
        s := StringReplace(S, '[22]', Checkbox[22], [rfReplaceAll]);
        s := StringReplace(S, '[23]', Checkbox[23], [rfReplaceAll]);
        s := StringReplace(S, '[24]', Checkbox[24], [rfReplaceAll]);
        s := StringReplace(S, '[25]', Checkbox[25], [rfReplaceAll]);
        s := StringReplace(S, '[26]', Checkbox[26], [rfReplaceAll]);
        s := StringReplace(S, '[27]', Checkbox[27], [rfReplaceAll]);
        s := StringReplace(S, '[28]', Checkbox[28], [rfReplaceAll]);
        s := StringReplace(S, '[29]', Checkbox[29], [rfReplaceAll]);
        s := StringReplace(S, '[30]', Checkbox[30], [rfReplaceAll]);
        s := StringReplace(S, '[31]', Checkbox[31], [rfReplaceAll]);
        s := StringReplace(S, '[32]', Checkbox[32], [rfReplaceAll]);
        s := StringReplace(S, '[33]', Checkbox[33], [rfReplaceAll]);
        s := StringReplace(S, '[34]', Checkbox[34], [rfReplaceAll]);
        s := StringReplace(S, '[35]', Checkbox[35], [rfReplaceAll]);
        s := StringReplace(S, '[36]', Checkbox[36], [rfReplaceAll]);
        s := StringReplace(S, '[37]', Checkbox[37], [rfReplaceAll]);
        s := StringReplace(S, '[38]', Checkbox[38], [rfReplaceAll]);
        s := StringReplace(S, '[39]', Checkbox[39], [rfReplaceAll]);
        s := StringReplace(S, '[40]', Checkbox[40], [rfReplaceAll]);
        s := StringReplace(S, '[41]', Checkbox[41], [rfReplaceAll]);
        s := StringReplace(S, '[42]', Checkbox[42], [rfReplaceAll]);
        s := StringReplace(S, '[43]', Checkbox[43], [rfReplaceAll]);
        s := StringReplace(S, '[44]', Checkbox[44], [rfReplaceAll]);
        s := StringReplace(S, '[45]', Checkbox[45], [rfReplaceAll]);
        s := StringReplace(S, '[46]', Checkbox[46], [rfReplaceAll]);
        s := StringReplace(S, '[47]', Checkbox[47], [rfReplaceAll]);
        s := StringReplace(S, '[48]', Checkbox[48], [rfReplaceAll]);
        s := StringReplace(S, '[49]', Checkbox[49], [rfReplaceAll]);
        s := StringReplace(S, '[50]', Checkbox[50], [rfReplaceAll]);
        s := StringReplace(S, '[51]', Checkbox[51], [rfReplaceAll]);
        s := StringReplace(S, '[52]', Checkbox[52], [rfReplaceAll]);
        s := StringReplace(S, '[53]', Checkbox[53], [rfReplaceAll]);
        s := StringReplace(S, '[54]', Checkbox[54], [rfReplaceAll]);

        s := StringReplace(S, '[72]', ToRTFutf(a.DonviQL), [rfReplaceAll]);
        s := StringReplace(S, '[71]', ToRTFutf(a.SoPhieuQL), [rfReplaceAll]);
        s := StringReplace(S, '[73]', ToRTFutf(a.Dungluong), [rfReplaceAll]);
        s := StringReplace(S, '[74]', ToRTFutf(a.ThuocDZ), [rfReplaceAll]);
        s := StringReplace(S, '[75]', ToRTFutf(a.Dungluong), [rfReplaceAll]);
        s := StringReplace(S, '[49]', ToRTFutf(FormatDateTime('hh:nn:ss', a.giodo)), [rfReplaceAll]);
        s := StringReplace(S, '[50]', ToRTFutf(FormatDateTime('yyyy-mm-dd', a.Ngaydo)), [rfReplaceAll]);
        s := StringReplace(S, '[58]', ToRTFutf(a.nguoido1), [rfReplaceAll]);
        s := StringReplace(S, '[63]', ToRTFutf(a.nguoido2), [rfReplaceAll]);
        s := StringReplace(S, '[67]', ToRTFutf(a.nguoido3), [rfReplaceAll]);
        s := StringReplace(S, '[60]', ToRTFutf(a.chucdanh1), [rfReplaceAll]);
        s := StringReplace(S, '[64]', ToRTFutf(a.chucdanh2), [rfReplaceAll]);
        s := StringReplace(S, '[68]', ToRTFutf(a.chucdanh3), [rfReplaceAll]);
        s := StringReplace(S, '[61]', ToRTFutf(a.bactho1), [rfReplaceAll]);
        s := StringReplace(S, '[65]', ToRTFutf(a.bactho2), [rfReplaceAll]);
        s := StringReplace(S, '[69]', ToRTFutf(a.bactho3), [rfReplaceAll]);
        s := StringReplace(S, '[62]', ToRTFutf(a.bacAT1), [rfReplaceAll]);
        s := StringReplace(S, '[66]', ToRTFutf(a.bacAT2), [rfReplaceAll]);
        s := StringReplace(S, '[70]', ToRTFutf(a.bacAT3), [rfReplaceAll]);
        s := StringReplace(S, '[51]', ToRTFutf(format('%0.2f', [a.Ua])), [rfReplaceAll]);
        s := StringReplace(S, '[52]', ToRTFutf(format('%0.2f', [a.Ub])), [rfReplaceAll]);
        s := StringReplace(S, '[53]', ToRTFutf(format('%0.2f', [a.Uc])), [rfReplaceAll]);
        s := StringReplace(S, '[59]', ToRTFutf(format('%0.2f', [a.CosP])), [rfReplaceAll]);
        s := StringReplace(S, '[54]', ToRTFutf(format('%0.2f', [a.Ia])), [rfReplaceAll]);
        s := StringReplace(S, '[55]', ToRTFutf(format('%0.2f', [a.Ib])), [rfReplaceAll]);
        s := StringReplace(S, '[56]', ToRTFutf(format('%0.2f', [a.IC])), [rfReplaceAll]);
        s := StringReplace(S, '[57]', ToRTFutf(format('%0.2f', [a.Io])), [rfReplaceAll]);
        s := StringReplace(S, '[76]', ToRTFutf(a.Tontai1), [rfReplaceAll]);
        s := StringReplace(S, '[77]', ToRTFutf(a.Tontai2), [rfReplaceAll]);
        s := StringReplace(S, '[78]', ToRTFutf(a.Tontai3), [rfReplaceAll]);
        s := StringReplace(S, '[79]', ToRTFutf(a.Tontai4), [rfReplaceAll]);
        s := StringReplace(S, '[80]', ToRTFutf(a.Tontai5), [rfReplaceAll]);
        s := StringReplace(S, '[81]', ToRTFutf(a.Tontai6), [rfReplaceAll]);
        s := StringReplace(S, '[82]', ToRTFutf(FormatDateTime('yyyy-mm-dd hh:nn:ss', a.ngaynhapso)), [rfReplaceAll]);
    end;
  s1 := s;
  f.Seek(0,0);
  f.WriteBuffer(Pointer(s1)^, length(s1));
    // nếu file không bận, thì ghi file
    while FileExists('abc.rtf') do
    begin
      i := SysUtils.FileOpen('abc.rtf', fmOpenWrite or fmOpenRead or fmShareDenyNone);
      if i <> -1 then
      begin
        SysUtils.FileClose(i);
        f.SaveToFile('abc.rtf');
        RichEdit1.PlainText := false;
        RichEdit1.Lines.LoadFromFile('abc.rtf');
        break;
      end;
    end;
  f.Free;

  //RichEdit1.lines.LoadFromFile('q_reports\mau_temp\KTngayTBA phu tai.rtf');
  QRRichText3.Update;
  s := RichEdit1.ToString;


//  for i := 0 to RichEdit1.Lines.Count - 1 do


  QuickRep1.PreviewModal;
end;

procedure TfrmPhieudotai.FormCreate(Sender: TObject);
begin
  RichEdit1.lines.LoadFromFile('q_reports\mau_temp\KTngayTBA phu tai.rtf');
  QRRichText3.Update;
end;

Function TfrmPhieudotai.GetValue(S: String): string;
begin
  Result := S;
end;

procedure TfrmPhieudotai.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  SpeedButton1Click(Sender);
end;

Function TfrmPhieudotai.VarString(index: integer): string;
Begin
  case Index of
    1:
      Result := frmPageControl.Filed1.DonviQL;
    2:
      Result := frmPageControl.Filed1.SoPhieuQL;
    3:
      Result := 'Tên TBA: ' + frmPageControl.Filed1.TenTBA + ', thuộc đường dây: '+ frmPageControl.Filed1.ThuocDZ + '.';
    4:
      Result := '1. Dung lượng các MBA: '+ frmPageControl.Filed1.Dungluong + ' kVA. Ngày giờ kiểm tra: '+
          FormatDateTime('hh:nn:ss', frmPageControl.Filed1.giodo) + ' - ' +
          FormatDateTime('yyyy-mm-dd', frmPageControl.Filed1.Ngaydo);
    5:
      Result := frmPageControl.Filed1.nguoido1;
    6:
      Result := frmPageControl.Filed1.nguoido2;
    7:
      Result := frmPageControl.Filed1.nguoido3;
    8:
      Result := frmPageControl.Filed1.chucdanh1;
    9:
      Result := frmPageControl.Filed1.chucdanh2;
    10:
      Result := frmPageControl.Filed1.chucdanh3;
    11:
      Result := frmPageControl.Filed1.bactho1;
    12:
      Result := frmPageControl.Filed1.bactho2;
    13:
      Result := frmPageControl.Filed1.bactho3;
    14:
      Result := frmPageControl.Filed1.bacAT1;
    15:
      Result := frmPageControl.Filed1.bacAT2;
    16:
      Result := frmPageControl.Filed1.bacAT3;

  else
    Result := '';
  end
End;

end.
