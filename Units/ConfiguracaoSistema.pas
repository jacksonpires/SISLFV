unit ConfiguracaoSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DBCtrls, ExtCtrls, Mask;

type
  TFormConfiguracaoSistema = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    BitBtn1: TBitBtn;
    DBEditNomeLocadora: TDBEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    DBEditEndereco: TDBEdit;
    Label2: TLabel;
    DBEditCidade: TDBEdit;
    Label3: TLabel;
    DBComboBoxEstado: TDBComboBox;
    Label4: TLabel;
    DBEditCEP: TDBEdit;
    Label5: TLabel;
    DBEditFone: TDBEdit;
    Label6: TLabel;
    DBEditFone2: TDBEdit;
    Label7: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfiguracaoSistema: TFormConfiguracaoSistema;

implementation

uses Tabelas;

{$R *.dfm}

procedure TFormConfiguracaoSistema.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConfiguracaoSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Configuracao.Post;
end;

end.
