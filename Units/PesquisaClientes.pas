unit PesquisaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids, DBGrids;

type
  TFormPesquisaClientes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    DBGrid1: TDBGrid;
    EditPesquisa: TEdit;
    Label1: TLabel;
    BitPesquisar: TBitBtn;
    RadioTipoPesquisa: TRadioGroup;
    BitBtn2: TBitBtn;
    RadioProcurar: TRadioGroup;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitPesquisarClick(Sender: TObject);
    procedure EditPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaClientes: TFormPesquisaClientes;

implementation

uses TabelasSQL;


{$R *.dfm}

procedure TFormPesquisaClientes.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPesquisaClientes.BitPesquisarClick(Sender: TObject);
begin
  DMSQL.PesquisaClientes.Close;
  DMSQL.PesquisaClientes.SQL.Clear;
  DMSQL.PesquisaClientes.SQL.Add('Select Cli_Codigo,Cli_Nome,Cli_Apelido from Clientes Where');

  Case RadioProcurar.ItemIndex of
    0: DMSQL.PesquisaClientes.SQL.Add('Cli_Nome Like :Nome ');
    1: DMSQL.PesquisaClientes.SQL.Add('Cli_Apelido Like :Apelido ');
  end;

  Case RadioTipoPesquisa.ItemIndex of
    0: DMSQL.PesquisaClientes.Params[0].AsString:=EditPesquisa.Text+'%';
    1: DMSQL.PesquisaClientes.Params[0].AsString:='%'+EditPesquisa.Text+'%';
    2: DMSQL.PesquisaClientes.Params[0].AsString:='%'+EditPesquisa.Text;
  end;

  DMSQL.PesquisaClientes.Open;
end;

procedure TFormPesquisaClientes.EditPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_Return Then
    BitPesquisar.Click;
end;

end.
