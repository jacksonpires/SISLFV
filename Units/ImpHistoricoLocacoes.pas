unit ImpHistoricoLocacoes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TFormImpHistoricoLocacoes = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabelNomeLocadora: TQRLabel;
    QRLabelEndereco: TQRLabel;
    QRLabelFone: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  FormImpHistoricoLocacoes: TFormImpHistoricoLocacoes;

implementation

uses TabelasSQL, Tabelas;

{$R *.DFM}

procedure TFormImpHistoricoLocacoes.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  If Odd(DMSQL.PesquisaLocacoes.RecNo) Then
    DetailBand1.Color:=ClSilver
  else
    DetailBand1.Color:=ClWhite;
end;

procedure TFormImpHistoricoLocacoes.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QrLabelNomeLocadora.Caption:=DM.ConfiguracaoCon_NomeLocadora.Value;
  QrLabelEndereco.Caption:=DM.ConfiguracaoCon_Endereco.Value;
  QrLabelFone.Caption:=DM.ConfiguracaoCon_Fone1.Value;
end;

end.
