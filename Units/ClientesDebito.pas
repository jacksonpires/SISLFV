unit ClientesDebito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TFormClientesDebito = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    EditCodUsuario: TEdit;
    BitBtn2: TBitBtn;
    LabelUsuario: TLabel;
    Bevel3: TBevel;
    DBGridDebitos: TDBGrid;
    LabelTotal: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure EditCodUsuarioExit(Sender: TObject);
    procedure EditCodUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure PESQUISA_DEBITOS;
    procedure TODOS_OS_DEBITOS;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesDebito: TFormClientesDebito;

implementation

uses TabelasSQL, Tabelas, PesquisaClientes;

{$R *.dfm}

procedure TFormClientesDebito.TODOS_OS_DEBITOS;
Begin
   DMSQL.PesquisaDebitos.Close;
   DMSQL.PesquisaDebitos.SQL.Clear;
   DMSQL.PesquisaDebitos.SQL.Add('Select * from Clientes, Fitas, Fitass, Locacoes, FitasLocadas, TiposAluguel Where Clientes.Cli_Codigo = Locacoes.Loc_Cliente and ');
   DMSQL.PesquisaDebitos.SQL.Add('Fitas.Fit_Codigo = Fitass.Fits_Fita and Fitass.Fits_Codigo = FitasLocadas.Fitl_Fitass and Locacoes.Loc_Codigo = FitasLocadas.Fitl_Locacao and');
   DMSQL.PesquisaDebitos.SQL.Add('Fitas.Fit_TipoAluguel = TiposAluguel.Tip_Codigo and Fitl_Pago = "N"');
   DMSQL.PesquisaDebitos.SQL.Add('Order by Clientes.Cli_Nome');
   DMSQL.PesquisaDebitos.Open;

   DMSQL.SQL.Close;
   DMSQL.SQL.SQL.Clear;
   DMSQL.SQL.SQL.Add('Select Sum(Fitl_ValorAluguel) as TOTAL from FitasLocadas Where Fitl_Pago = "N" ');
   DMSQL.SQL.Open;
end;

procedure TFormClientesDebito.PESQUISA_DEBITOS;
Begin
  DMSQL.PesquisaDebitos.Close;
  DMSQL.PesquisaDebitos.SQL.Clear;
  DMSQL.PesquisaDebitos.SQL.Add('Select * from Clientes, Fitas, Fitass, Locacoes, FitasLocadas, TiposAluguel Where Clientes.Cli_Codigo = Locacoes.Loc_Cliente and ');
  DMSQL.PesquisaDebitos.SQL.Add('Fitas.Fit_Codigo = Fitass.Fits_Fita and Fitass.Fits_Codigo = FitasLocadas.Fitl_Fitass and Locacoes.Loc_Codigo = FitasLocadas.Fitl_Locacao and');
  DMSQL.PesquisaDebitos.SQL.Add('Fitas.Fit_TipoAluguel = TiposAluguel.Tip_Codigo and Fitl_Pago = "N"');
  DMSQL.PesquisaDebitos.SQL.Add('and Clientes.Cli_Codigo=:Codigo Order by Clientes.Cli_Nome');
  DMSQL.PesquisaDebitos.Params[0].AsInteger:=DMSQL.PesquisaClientesCli_Codigo.Value;
  DMSQL.PesquisaDebitos.Open;

  DMSQL.SQL.Close;
  DMSQL.SQL.SQL.Clear;
  DMSQL.SQL.SQL.Add('Select Sum(Fitl_ValorAluguel) as TOTAL from FitasLocadas, Locacoes, Clientes Where Loc_Codigo = Fitl_Locacao and Loc_Cliente = Cli_Codigo and Fitl_Pago = "N" and Cli_Codigo=:Codigo');
  DMSQL.SQL.Params[0].AsInteger:=StrToInt(EditCodUsuario.Text);
  DMSQL.SQL.Open;

  FormClientesDebito.LabelTotal.caption:=FormatFloat('Total a receber: R$ #,##0.00', DMSQL.SQL.FieldByName('TOTAL').Value);
end;


procedure TFormClientesDebito.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClientesDebito.EditCodUsuarioExit(Sender: TObject);
begin
 If (IntToStr(DMSQL.PesquisaClientesCli_Codigo.Value) <> EditCodUsuario.Text) and (Length(Trim(EditCodUsuario.Text)) > 0) Then
 Begin
    DMSQL.PesquisaClientes.Close;
    DMSQL.PesquisaClientes.SQL.Clear;
    DMSQL.PesquisaClientes.SQL.Add('Select Cli_Codigo,Cli_Nome,Cli_Apelido from Clientes Where Cli_Codigo =:Codigo ');
    DMSQL.PesquisaClientes.Params[0].AsInteger:= StrToInt(EditCodUsuario.Text);
    DMSQL.PesquisaClientes.Open;

    If DMSQL.PesquisaClientes.RecordCount > 0 Then
    Begin
      EditCodUsuario.Text:=IntToStr(DMSQL.PesquisaClientesCli_Codigo.Value);
      LabelUsuario.Caption:=DMSQL.PesquisaClientesCli_Nome.Value;
      PESQUISA_DEBITOS;
    end
    else
    Begin
      TODOS_OS_DEBITOS;
      EditCodUsuario.SetFocus;
      LabelUsuario.Caption:= 'Nenhum Usuário...';
    end;
 end;

 If Length(Trim(EditCodUsuario.Text)) = 0 Then
 Begin
   TODOS_OS_DEBITOS;
   LabelUsuario.Caption:= 'Nenhum Usuário...';
 end;

 DMSQL.PesquisaClientes.Close;
end;

procedure TFormClientesDebito.EditCodUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  If not( key in['0'..'9',#8] ) then
  begin
    beep;
    key:=#0;
  end;
end;

procedure TFormClientesDebito.BitBtn2Click(Sender: TObject);
begin
  FormPesquisaClientes:=TFormPesquisaClientes.Create(Application);

  DMSQL.PesquisaClientes.Open;

  FormPesquisaClientes.ShowModal;
  FormPesquisaClientes.Free;
  FormPesquisaClientes:=Nil;

  If DMSQL.PesquisaClientes.RecordCount > 0 Then
  Begin
    EditCodUsuario.Text:=IntToStr(DMSQL.PesquisaClientesCli_Codigo.Value);
    LabelUsuario.Caption:=DMSQL.PesquisaClientesCli_Nome.Value;
    PESQUISA_DEBITOS;
  end;

  DMSQL.PesquisaClientes.Close;
end;

end.
