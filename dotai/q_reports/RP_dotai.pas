unit RP_dotai;

interface

uses
  SysUtils, Classes;

Type
  TStyle = (vCheckBox, vEdit, vMemo, vDateTimePicker, vLabel);

  TReportDotaiIndex = (prDonvi, asSophieu, asPhieuNam, asTenTBA, asTenDZ,
    asNgayTest, asGiotest);

  TDotaiTBANgay = record
    TenTBA, ThuocDZ, Dungluong, DonviQL, SoPhieuQL: String;
    ID, Madonvi, kieungay: integer;
    Ua, Ub, Uc, Ia, Ib, IC, Io, CosP: single;
    Ngaydo: TDate;
    giodo: TTime;
    Tontai1, Tontai2, Tontai3, Tontai4, Tontai5, Tontai6: String;
    nguoido1, nguoido2, nguoido3, chucdanh1, chucdanh2, chucdanh3: string;
    Checkbox, bactho1, bactho2, bactho3, bacAT1, bacAT2, bacAT3: string;
    ngaynhap, ngaynhapso: TDateTime;
  end;

  TReportDataiField = record
    Func: TReportDotaiIndex;
    Name, FieldsName, Caption, TextHint: String;
    ID, Left, Top, Width, Height, TabOrder: integer;
    Style: TStyle;
  end;

  TReportDotai = class(TObject)
  private
    //FField: array [TReportDotaiIndex] of TReportDataiField;
    procedure InitReportDotai(Index: TReportDotaiIndex;
      ID, Left, Top, Width, Height: integer; Name, FieldsName: String;
      Style: TStyle;TabOrder: integer);
  public
    FField1: array of TReportDataiField;
    FDataiTBANgay: array of TDotaiTBANgay;
    constructor Create;
    destructor Destroy; override;
    Function ID2Name(ID: integer): String;
    procedure Save(FileName:TFileName);
    procedure Load(FileName:TFileName);
  end;

Function ToRTFutf(S: String): String;

const
  Elements = 12*6+5*10+2;
  MyArray  : array  [1..Elements] of string =
      (//'Ă','ă','Â','â','Đ',
       'Á','À','Ả','Ã','Ạ',
       'á','à','ả','ã','ạ',                 //'ạ' = u7841
       'đ','Đ',
       'É','Ẹ','Ẻ','Ẽ','È',
       'é','è','ẻ','ẹ','ẽ',
       'Í','Ị','Ì','Ỉ','Ĩ',
       'í','ì','ị','ĩ','ỉ',
       'Ó','Ỏ','Ò','Õ','Ọ',
       'ò','ó','ỏ','ọ','õ',
       'Ù','Ủ','Ụ','Ũ','Ú',
       'ù','ú','ũ','ụ','ủ',
       'Ắ','Ằ','Ẳ','Ẵ','Ặ','Ă',
       'ắ','ằ','ẳ','ẵ','ặ','ă',
       'Ấ','Ầ','Ẩ','Ẫ','Ậ','Â',
       'ấ','ầ','ẩ','ẫ','ậ','â',
       'Ế','Ề','Ể','Ễ','Ệ','Ê',
       'ế','ề','ể','ễ','ệ','ê',
       'Ố','Ồ','Ổ','Ỗ','Ộ','Ô',
       'ố','ồ','ổ','ỗ','ộ','ô',
       'Ớ','Ờ','Ở','Ỡ','Ợ','Ơ',
       'ớ','ờ','ở','ỡ','ợ','ơ',
       'Ứ','Ừ','Ử','Ữ','Ự','Ư',
       'ứ','ừ','ử','ữ','ự','ư'
      );
var
  ReportDotai: TReportDotai;

implementation

Function ToRTFutf(S: String): String;

function String2Hex(const Buffer: string): string;
var
  n: Integer;
begin
  Result := '';
  for n := 1 to Length(Buffer) do
    Result := LowerCase(Result + IntToHex(Ord(Buffer[n]), 2));
end;

function hexaToInt(s : string) : Int64;
begin
  if (s <> '') and (s[1] <> '$') then
    result := strToInt64('$' + s )
  else
    result := strToInt64(s);
end;

function ToRTF(i: integer) : string;
begin
  result := '\u' + Inttostr(i) + '\''3f';
end;

Var
  i, j: Integer;
begin
  i := 1;
  result := '';
  while i <= length(s) do
  begin
    for j := 1 to length(MyArray) do
    if s[i] = MyArray[j] then
      begin
        result := result + ToRTF(hexaToInt(String2Hex(s[i])));
        break;
      end;
    if j > length(MyArray) then
      result := result + s[i];
    inc(i);
  end;
end;

constructor TReportDotai.Create;
begin
  inherited;
  //các hàm này được build từ Tools\makePRExcel
//Function,STT,ID,Left,Top,W,H,Name,FieldsName,Style,TabStop,);
// CheckBox
 InitReportDotai(prDonvi,1,369,463,27,20, 'CheckBox1', 'Mã đơn vị', vCheckBox,30);
 InitReportDotai(prDonvi,2,633,512,27,20, 'CheckBox10', 'Mã đơn vị', vCheckBox,38);
 InitReportDotai(prDonvi,3,356,545,27,20, 'CheckBox11', 'Mã đơn vị', vCheckBox,39);
 InitReportDotai(prDonvi,4,486,545,27,20, 'CheckBox12', 'Mã đơn vị', vCheckBox,40);
 InitReportDotai(prDonvi,5,581,447,27,20, 'CheckBox13', 'Mã đơn vị', vCheckBox,29);
 InitReportDotai(prDonvi,6,368,447,27,20, 'CheckBox14', 'Mã đơn vị', vCheckBox,27);
 InitReportDotai(prDonvi,7,387,577,27,20, 'CheckBox15', 'Mã đơn vị', vCheckBox,41);
 InitReportDotai(prDonvi,8,517,577,27,20, 'CheckBox16', 'Mã đơn vị', vCheckBox,42);
 InitReportDotai(prDonvi,9,404,608,27,20, 'CheckBox17', 'Mã đơn vị', vCheckBox,43);
 InitReportDotai(prDonvi,10,505,608,27,20, 'CheckBox18', 'Mã đơn vị', vCheckBox,44);
 InitReportDotai(prDonvi,11,634,608,27,20, 'CheckBox19', 'Mã đơn vị', vCheckBox,45);
 InitReportDotai(prDonvi,12,502,463,27,20, 'CheckBox2', 'Mã đơn vị', vCheckBox,31);
 InitReportDotai(prDonvi,13,398,643,27,20, 'CheckBox20', 'Mã đơn vị', vCheckBox,46);
 InitReportDotai(prDonvi,14,528,641,27,20, 'CheckBox21', 'Mã đơn vị', vCheckBox,47);
 InitReportDotai(prDonvi,15,398,659,27,20, 'CheckBox22', 'Mã đơn vị', vCheckBox,48);
 InitReportDotai(prDonvi,16,528,657,27,20, 'CheckBox23', 'Mã đơn vị', vCheckBox,49);
 InitReportDotai(prDonvi,17,425,673,27,20, 'CheckBox24', 'Mã đơn vị', vCheckBox,50);
 InitReportDotai(prDonvi,18,528,673,27,20, 'CheckBox25', 'Mã đơn vị', vCheckBox,51);
 InitReportDotai(prDonvi,19,630,673,27,20, 'CheckBox26', 'Mã đơn vị', vCheckBox,52);
 InitReportDotai(prDonvi,20,399,706,27,20, 'CheckBox27', 'Mã đơn vị', vCheckBox,53);
 InitReportDotai(prDonvi,21,529,706,27,20, 'CheckBox28', 'Mã đơn vị', vCheckBox,54);
 InitReportDotai(prDonvi,22,399,722,27,20, 'CheckBox29', 'Mã đơn vị', vCheckBox,55);
 InitReportDotai(prDonvi,23,356,480,27,20, 'CheckBox3', 'Mã đơn vị', vCheckBox,32);
 InitReportDotai(prDonvi,24,529,722,27,20, 'CheckBox30', 'Mã đơn vị', vCheckBox,56);
 InitReportDotai(prDonvi,25,461,755,27,20, 'CheckBox31', 'Mã đơn vị', vCheckBox,57);
 InitReportDotai(prDonvi,26,594,755,27,20, 'CheckBox32', 'Mã đơn vị', vCheckBox,58);
 InitReportDotai(prDonvi,27,462,771,27,20, 'CheckBox33', 'Mã đơn vị', vCheckBox,59);
 InitReportDotai(prDonvi,28,594,771,27,22, 'CheckBox34', 'Mã đơn vị', vCheckBox,60);
 InitReportDotai(prDonvi,29,446,803,27,20, 'CheckBox35', 'Mã đơn vị', vCheckBox,61);
 InitReportDotai(prDonvi,30,446,819,27,20, 'CheckBox36', 'Mã đơn vị', vCheckBox,62);
 InitReportDotai(prDonvi,31,578,802,27,20, 'CheckBox37', 'Mã đơn vị', vCheckBox,63);
 InitReportDotai(prDonvi,32,578,820,27,20, 'CheckBox38', 'Mã đơn vị', vCheckBox,64);
 InitReportDotai(prDonvi,33,283,867,27,20, 'CheckBox39', 'Mã đơn vị', vCheckBox,65);
 InitReportDotai(prDonvi,34,356,496,27,20, 'CheckBox4', 'Mã đơn vị', vCheckBox,34);
 InitReportDotai(prDonvi,35,444,867,27,20, 'CheckBox40', 'Mã đơn vị', vCheckBox,66);
 InitReportDotai(prDonvi,36,638,883,27,20, 'CheckBox41', 'Mã đơn vị', vCheckBox,69);
 InitReportDotai(prDonvi,37,529,883,27,20, 'CheckBox42', 'Mã đơn vị', vCheckBox,68);
 InitReportDotai(prDonvi,38,414,883,27,20, 'CheckBox43', 'Mã đơn vị', vCheckBox,67);
 InitReportDotai(prDonvi,39,398,915,27,20, 'CheckBox44', 'Mã đơn vị', vCheckBox,70);
 InitReportDotai(prDonvi,40,548,916,27,20, 'CheckBox45', 'Mã đơn vị', vCheckBox,71);
 InitReportDotai(prDonvi,41,638,917,27,20, 'CheckBox46', 'Mã đơn vị', vCheckBox,72);
 InitReportDotai(prDonvi,42,414,1230,27,20, 'CheckBox47', 'Mã đơn vị', vCheckBox,75);
 InitReportDotai(prDonvi,43,565,1230,27,20, 'CheckBox48', 'Mã đơn vị', vCheckBox,76);
 InitReportDotai(prDonvi,44,487,480,27,20, 'CheckBox5', 'Mã đơn vị', vCheckBox,33);
 InitReportDotai(prDonvi,45,487,496,27,20, 'CheckBox6', 'Mã đơn vị', vCheckBox,35);
 InitReportDotai(prDonvi,46,370,512,27,20, 'CheckBox7', 'Mã đơn vị', vCheckBox,36);
 InitReportDotai(prDonvi,47,505,512,27,20, 'CheckBox8', 'Mã đơn vị', vCheckBox,37);
 InitReportDotai(prDonvi,48,502,447,27,20, 'CheckBox9', 'Mã đơn vị', vCheckBox,28);

//DateTimePicker
 InitReportDotai(prDonvi,49,563,206,86,21, 'DateTimePicker3', 'Giờ đo', vDateTimePicker,5);
 InitReportDotai(prDonvi,50,649,206,93,21, 'DateTimePicker2', 'Ngày đo', vDateTimePicker,6);
 InitReportDotai(prDonvi,82,480,1532,217,21, 'DateTimePicker1', 'Ngày nhập sổ', vDateTimePicker,81);

//Edit
 InitReportDotai(prDonvi,51,233,407,45,21, 'Edit1', 'Ua', vEdit,19);
 InitReportDotai(prDonvi,52,326,407,42,21, 'Edit2', 'Ub', vEdit,20);
 InitReportDotai(prDonvi,53,423,407,55,21, 'Edit3', 'Uc', vEdit,21);
 InitReportDotai(prDonvi,54,233,427,45,21, 'Edit4', 'Pha A', vEdit,23);
 InitReportDotai(prDonvi,55,320,427,39,21, 'Edit5', 'Pha B', vEdit,24);
 InitReportDotai(prDonvi,56,423,427,55,21, 'Edit6', 'Pha C', vEdit,25);
 InitReportDotai(prDonvi,57,520,425,55,21, 'Edit7', 'Pha O', vEdit,26);
 InitReportDotai(prDonvi,58,520,405,55,21, 'Edit8', 'Người đo 1', vEdit,22);
 InitReportDotai(prDonvi,59,182,272,192,21, 'Edit9', 'CosP', vEdit,7);
 InitReportDotai(prDonvi,60,378,272,139,21, 'Edit10', 'Chức danh 1', vEdit,8);
 InitReportDotai(prDonvi,61,521,272,113,21, 'Edit11', 'bậc thợ 1', vEdit,9);
 InitReportDotai(prDonvi,62,638,272,86,21, 'Edit12', 'bậc AT 1', vEdit,10);
 InitReportDotai(prDonvi,63,182,299,192,21, 'Edit13', 'Người đo 2', vEdit,11);
 InitReportDotai(prDonvi,64,378,299,139,21, 'Edit14', 'Chức danh 2', vEdit,12);
 InitReportDotai(prDonvi,65,521,299,113,21, 'Edit15', 'bậc thợ 2', vEdit,13);
 InitReportDotai(prDonvi,66,638,297,86,21, 'Edit16', 'bậc AT 2', vEdit,14);
 InitReportDotai(prDonvi,67,182,324,192,21, 'Edit17', 'Người đo 3', vEdit,15);
 InitReportDotai(prDonvi,68,378,324,139,21, 'Edit18', 'Chức danh 3', vEdit,16);
 InitReportDotai(prDonvi,69,521,324,113,21, 'Edit19', 'bậc thợ 3', vEdit,17);
 InitReportDotai(prDonvi,70,638,324,86,21, 'Edit20', 'bậc AT 3', vEdit,18);
 InitReportDotai(prDonvi,71,153,93,96,21, 'Edit21', 'Số phiếu quản lý', vEdit,1);
 InitReportDotai(prDonvi,72,128,74,255,21, 'Edit22', 'Đơn vị quản lý', vEdit,0);
 InitReportDotai(prDonvi,73,202,186,157,21, 'Edit23', 'Tên TBA', vEdit,2);
 InitReportDotai(prDonvi,74,486,186,242,21, 'Edit24', 'Thuộc ĐD', vEdit,3);
 InitReportDotai(prDonvi,75,309,206,122,21, 'Edit25', 'Dung lượng', vEdit,4);

//Memo
 InitReportDotai(prDonvi,76,120,959,604,49, 'Memo2', 'Tồn tại 1', vMemo,73);
 InitReportDotai(prDonvi,77,120,1181,604,49, 'Memo3', 'Tồn tại 2', vMemo,74);
 InitReportDotai(prDonvi,78,120,1270,604,49, 'Memo4', 'Tồn tại 3', vMemo,77);
 InitReportDotai(prDonvi,79,120,1335,604,49, 'Memo5', 'Tồn tại 4', vMemo,78);
 InitReportDotai(prDonvi,80,120,1417,604,49, 'Memo6', 'Tồn tại 5', vMemo,79);
 InitReportDotai(prDonvi,81,120,1485,604,49, 'Memo7', 'Tồn tại 6', vMemo,80);

 //Save('abc.btd');
end;

procedure TReportDotai.InitReportDotai(Index: TReportDotaiIndex;
  ID, Left, Top, Width, Height: integer; Name, FieldsName: String;
  Style: TStyle;TabOrder: integer);
Begin
  if length(FField1) < ID then
    setlength(FField1, ID);
  FField1[ID - 1].Func := Index;
  FField1[ID - 1].Name := name;
  FField1[ID - 1].FieldsName := FieldsName;
  FField1[ID - 1].ID := ID;
  FField1[ID - 1].Left := Left;
  FField1[ID - 1].Top := Top;
  FField1[ID - 1].Width := Width;
  FField1[ID - 1].Height := Height;
  FField1[ID - 1].Style := Style;
  FField1[ID - 1].TabOrder := TabOrder;
End;

destructor TReportDotai.Destroy;
var
  i: TReportDotaiIndex;
Begin
  // for i := low(TReportDotaiIndex) to high(TReportDotaiIndex) - 1 do
  // FreeAndNil(FField[i]);
End;

Function TReportDotai.ID2Name(ID: integer): String;
var
  i: integer;
begin
  for i := 0 to length(FField1) - 1 do
    if FField1[i].ID = ID then
      begin
        result := FField1[i].Name;
        break;
      end;
end;

procedure TReportDotai.Save(FileName:TFileName);
var
  F: TFileStream;
  buff, i, et, e1, e2, e3: integer;
begin
  F := TFileStream.Create(FileName, fmCreate or fmOpenWrite);
  et := length(FField1);
  f.WriteBuffer(et, 4);
  for i := 0 to et - 1 do
  begin
    e1 := length(FField1[i].Name);
    e2 := length(FField1[i].FieldsName);
    e2 := length(FField1[i].Caption);
    f.WriteBuffer(e1, 4);
    f.WriteBuffer(e2, 4);
    f.WriteBuffer(Pointer(FField1[i].Name)^, 2*e1);
    f.WriteBuffer(Pointer(FField1[i].FieldsName)^, 2*e2);
    f.WriteBuffer(Pointer(FField1[i].Caption)^, 2*e3);
    f.WriteBuffer(FField1[i].Func, 4);
    f.WriteBuffer(FField1[i].ID, 4);
    f.WriteBuffer(FField1[i].Left, 4);
    f.WriteBuffer(FField1[i].Top, 4);
    f.WriteBuffer(FField1[i].Width, 4);
    f.WriteBuffer(FField1[i].Height, 4);
    f.WriteBuffer(FField1[i].TabOrder, 4);
    f.WriteBuffer(FField1[i].Style, 4);
  end;
  f.Free;
end;

procedure TReportDotai.Load(FileName:TFileName);
var
  F: TFileStream;
  buff, i, et, e1, e2: integer;
begin
  F := TFileStream.Create(FileName, fmOpenRead);
  f.ReadBuffer(et, 4);
  Setlength(FField1, et);
  for i := 0 to et - 1 do
  begin
    f.ReadBuffer(e1, 4);
    f.ReadBuffer(e2, 4);
    f.ReadBuffer(Pointer(FField1[i].Name)^, 2*e1);
    f.ReadBuffer(Pointer(FField1[i].FieldsName)^, 2*e2);
    f.ReadBuffer(FField1[i].Func, 4);
    f.ReadBuffer(FField1[i].ID, 4);
    f.ReadBuffer(FField1[i].Left, 4);
    f.ReadBuffer(FField1[i].Top, 4);
    f.ReadBuffer(FField1[i].Width, 4);
    f.ReadBuffer(FField1[i].Height, 4);
    f.ReadBuffer(FField1[i].TabOrder, 4);
    f.ReadBuffer(FField1[i].Style, 4);
  end;
  f.Free;
end;

begin
  ReportDotai := TReportDotai.Create;
  Setlength(ReportDotai.FDataiTBANgay, 1);
end.
