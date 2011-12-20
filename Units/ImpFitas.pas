unit ImpFitas;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TFormImpFitas = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
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
  FormImpFitas: TFormImpFitas;

implementation

uses Tabelas;

{$R *.DFM}

procedure TFormImpFitas.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If Odd(DM.Fitas.RecNo) Then
    DetailBand1.Color:=ClSilver
  else
    DetailBand1.Color:=ClWhite;
end;

procedure TFormImpFitas.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QrLabelNomeLocadora.Caption:=DM.ConfiguracaoCon_NomeLocadora.Value;
  QrLabelEndereco.Caption:=DM.ConfiguracaoCon_Endereco.Value;
  QrLabelFone.Caption:=DM.ConfiguracaoCon_Fone1.Value;
end;

end.
