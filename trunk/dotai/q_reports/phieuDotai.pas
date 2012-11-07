unit phieuDotai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBGrids, QRCtrls, qrpctrls, qrpBaseCtrls,
  StdCtrls, Buttons;

type
  TfrmphieudotaiReport = class(TForm)
    Button1: TButton;
    ScrollBox1: TScrollBox;
    GridRep: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRvar1: TQRLabel;
    QRvar2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRvar3: TQRLabel;
    QRvar4: TQRLabel;
    QRPGrid1: TQRPGrid;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRhovaten1: TQRLabel;
    QRhovaten2: TQRLabel;
    QRhovaten3: TQRLabel;
    QRchucdanh1: TQRLabel;
    QRchucdanh2: TQRLabel;
    QRchucdanh3: TQRLabel;
    QRbactho1: TQRLabel;
    QRbactho2: TQRLabel;
    QRbactho3: TQRLabel;
    QRBacAT1: TQRLabel;
    QRBacAT2: TQRLabel;
    QRBacAT3: TQRLabel;
    QRRichText1: TQRRichText;
    SpeedButton1: TSpeedButton;
    QRSysData2: TQRSysData;
    procedure GridRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure GridRepNeedData(Sender: TObject; var MoreData: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Function VarString(index: integer): string;
    Function GetValue(S: String): string;
  public
    { Public declarations }
  end;

var
  frmphieudotaiReport: TfrmphieudotaiReport;
  rec, rec1: integer;

implementation

{$R *.dfm}

procedure TfrmphieudotaiReport.Button1Click(Sender: TObject);
begin
  QRvar1.Caption := GetValue(VarString(1));
  QRvar2.Caption := GetValue(VarString(2));
  QRvar3.Caption := GetValue(VarString(4));
  QRvar4.Caption := GetValue(VarString(6));
  QRhovaten1.Caption := GetValue(VarString(17));
  QRhovaten2.Caption := GetValue(VarString(18));
  QRhovaten3.Caption := GetValue(VarString(19));
  QRchucdanh1.Caption := GetValue(VarString(20));
  QRchucdanh2.Caption := GetValue(VarString(21));
  QRchucdanh3.Caption := GetValue(VarString(22));
  QRbactho1.Caption := GetValue(VarString(23));
  QRbactho2.Caption := GetValue(VarString(24));
  QRbactho3.Caption := GetValue(VarString(25));
  QRBacAT1.Caption := GetValue(VarString(26));
  QRBacAT2.Caption := GetValue(VarString(27));
  QRBacAT3.Caption := GetValue(VarString(28));
  // QRRichText1.Lines.LoadFromFile('q_reports\mau_temp\temp.btd');
  GridRep.Preview;
end;

procedure TfrmphieudotaiReport.GridRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  rec := 0;
end;

procedure TfrmphieudotaiReport.GridRepNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  // qrlabel57.caption := 'Record number : ' + inttostr(rec) + '  ' + chr($9034 + rec);
  QRRichText1.Lines.LoadFromFile
    ('q_reports\mau_temp\temp_KTngayTBA phu tai_page' + inttostr(rec + 1)
    + '.btd');
  inc(rec);
  MoreData := rec < 2;
end;

Function TfrmphieudotaiReport.GetValue(S: String): string;
begin
  Result := S;
end;

Function TfrmphieudotaiReport.VarString(index: integer): string;
Begin
  case Index of
    1:
      Result := '[1]'; // Tên đơn vị
    2, 3:
      Result := 'Số: [2]/[3]'; // Số: ..../Năm
    4, 5:
      Result := 'Tên TBA: [4], thuộc đường dây: [5].';
    6, 7, 8:
      Result := '1. Dung lượng các MBA: [6] kVA. Ngày giờ kiểm tra: [7] - [8]';
    9 .. 11:
      Result := '- UhA = [9]' + #9 + 'UhB = [10]' + #9 + 'UhC = [11]';
    12 .. 15:
      Result := '- IhA = [12]' + #9 + 'IhB = [13]' + #9 + 'IhC = [14]' + #9 +
        'I0 = [15]';
    16:
      Result := 'Ngày cập nhật thông tin về hồ sơ quản lý trạm: [16]';
    17:
      Result := '[17]'; // Họ và tên 1
    18:
      Result := '[18]'; // Họ và tên 2
    19:
      Result := '[19]'; // Họ và tên 3
    20:
      Result := '[20]'; // Chức danh 1
    21:
      Result := '[21]'; // Chức danh 2
    22:
      Result := '[22]'; // Chức danh 3
    23:
      Result := '[23]'; // Bậc thợ 1
    24:
      Result := '[24]'; // Bậc thợ 2
    25:
      Result := '[25]'; // Bậc thợ 3
    26:
      Result := '[26]'; // Bậc AT 1
    27:
      Result := '[27]'; // Bậc AT 2
    28:
      Result := '[28]'; // Bậc AT 3
  else
    Result := '';
  end
End;

end.
