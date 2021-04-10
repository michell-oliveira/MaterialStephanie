unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TNotaFiscal = record
    FIdCliente : Integer;
    FNumeroNota : String;
    FCFOP : integer;
    FValor : currency;
    FDataEntrada : TDateTime;
  end;

  TForm1 = class(TForm)
    Edit1: TEdit;
    LabeledEdit1: TLabeledEdit;
    Label1: TLabel;
    Memo1: TMemo;
    BtnMemo: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BtnMemoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    FInteiro : integer;
    FString : String;
    FBoolean : boolean; //True / False - 1 / 0
    FDouble : Double; // 0.000000000000001
    FCurrency : Currency; // 0.00001
    FDataEHora : TDateTime; // 10-04-2021 09:11:00
    FData : TDate; // 10-04-2021
    { Public declarations }

    procedure TiposIdentificadores;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
Var
  lVariavelComum : String;
  lVariavelPonteiro : ^String;

begin

  ////////////////////// PONTEIROS ///////////////////////////
  ///
  lVariavelComum := 'Conteúdo variavel comum';

  lVariavelPonteiro := @lVariavelComum;

  ShowMessage(lVariavelComum);

  ShowMessage('O Valor de lVariavelPontiero é: ' + String(lVariavelPonteiro^));

  ShowMessage(Integer(lVariavelPonteiro).ToString);


end;

procedure TForm1.BitBtn2Click(Sender: TObject);
Var
  lNotaFiscal : TNotaFiscal;
begin
  lNotaFiscal.FIdCliente := StrToInt(LabeledEdit1.Text);
  lNotaFiscal.FNumeroNota := Edit1.Text;
  lNotaFiscal.FCFOP := StrToInt(Edit2.Text);
  lNotaFiscal.FDataEntrada := DateTimePicker1.DateTime;

  Memo1.Lines.Add('Id Cliente: ' + lNotaFiscal.FIdCliente.ToString);
  Memo1.Lines.Add('Numero Nota: ' + lNotaFiscal.FNumeroNota);
  Memo1.Lines.Add('CFOP: ' + lNotaFiscal.FCFOP.ToString);
  Memo1.Lines.Add('Data de Entrada: ' + DateTimeToStr(lNotaFiscal.FDataEntrada));


end;

procedure TForm1.BtnMemoClick(Sender: TObject);
Var
  li: integer;
  lDate: TDate;
  lDateTime: TDateTime;
  lString : string;
  lResultadoSoma : integer;
begin
  for li := 0 to 10 do
    Memo1.Lines.Add('Teste');

  lDate := DateTimePicker1.Date;
  lDateTime := DateTimePicker1.DateTime;

  Memo1.Lines.Add('Date: ' + DateToStr(lDate) + ' DateTime: ' + DateTimeToStr(lDateTime) + '.');

  lString:= Edit1.Text + Edit2.Text;

  lResultadoSoma:= StrToInt(Edit1.text) + StrToInt(Edit2.text);

  Memo1.Lines.Add('Resultado concatenação: ' + lString);
  Memo1.Lines.Add('Resultado soma: ' + InttoStr(lResultadoSoma) );


  Memo1.Text := ' x ';
end;

procedure TForm1.TiposIdentificadores;
Var
  lByte : Byte;
  lShort : Short;
  lInteger : integer;
  lLong : long;
  lSingle: single;
  lDouble: double;
  lCurrency: Currency;
  lBoolean : Boolean;
  lChar: Char;
  lString: String;
  lDateTime: TDateTime;
  lDate: TDate;
  lQuery: TFdQuery;

Const
  lComandoSQL: STRING = 'SELECT * FROM CLIENTES';

begin

  lQuery.SQL.Text := lComandoSql;
  // inteiro
  lByte := 255; // Tipo Byte só aceita valores numéricos até 255. 1 Byte
  lShort := 32767; // Tipo Short -32768 a 32767. 1 Byte
  lInteger :=   2147483647; // Tipo Integer  2.147.483.647. 2 Byte;
  lLong :=   9223372036854775807; // Tipo Long  9.223.372.036.854.775.807 Quintilhão 4byte

  // ponto flutuante
  lSingle  := 2.45; // single   32 bits
  lDouble := 2.000000000000001; // double 64 bits
  lCurrency := 2.00001; //currency 8 Bytes  –922337203685477,5808 a +922337203685477,5807

  // booleano
  lBoolean := false; //True ou False

  // String;
  lChar := 'A'; // 16 bits
  lString := 'asdfasfdasfdasdf';    //varia de 2 a 256

  lQuery.SQL.Text:= lComandoSql;

  // datas
  lDateTime := DateTimePicker1.DateTime;
  lDate := DateTimePicker1.Date;

  lString:= Label1.Caption;
  lString:= LabeledEdit1.Text;
  lString:= LabeledEdit1.EditLabel.Caption;
  lString:= Memo1.Lines[0];
  lString:= Memo1.Text;

  Memo1.Lines.Add(lString);

  lQuery.SQL.Text := lComandoSql;



end;

end.
