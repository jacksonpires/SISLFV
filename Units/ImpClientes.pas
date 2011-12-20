unit ImpClientes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TFormImpClientes = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabelNomeLocadora: TQRLabel;
    QRLabelEndereco: TQRLabel;
    QRLabelFone: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  FormImpClientes: TFormImpClientes;

implementation

uses Tabelas, TabelasSQL;

{$R *.DFM}

procedure TFormImpClientes.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If Odd(DM.Clientes.RecNo) Then
    DetailBand1.Color:=ClSilver
  else
    DetailBand1.Color:=ClWhite;
end;

procedure TFormImpClientes.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QrLabelNomeLocadora.Caption:=DM.ConfiguracaoCon_NomeLocadora.Value;
  QrLabelEndereco.Caption:=DM.ConfiguracaoCon_Endereco.Value;
  QrLabelFone.Caption:=DM.ConfiguracaoCon_Fone1.Value;
end;

end.
