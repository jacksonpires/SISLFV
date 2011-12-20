unit ImpClientesDebito;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TFormImpClientesDebito = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabelNomeLocadora: TQRLabel;
    QRLabelEndereco: TQRLabel;
    QRLabelFone: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRSysData3: TQRSysData;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  FormImpClientesDebito: TFormImpClientesDebito;

implementation

uses TabelasSQL, Tabelas;

{$R *.DFM}

procedure TFormImpClientesDebito.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QrLabelNomeLocadora.Caption:=DM.ConfiguracaoCon_NomeLocadora.Value;
  QrLabelEndereco.Caption:=DM.ConfiguracaoCon_Endereco.Value;
  QrLabelFone.Caption:=DM.ConfiguracaoCon_Fone1.Value;
end;

procedure TFormImpClientesDebito.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  If Odd(DMSQL.PesquisaDebitos.RecNo) Then
    DetailBand1.Color:=ClSilver
  else
    DetailBand1.Color:=ClWhite;

end;

end.
