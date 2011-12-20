unit PagamentoDebitos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, dbcgrids, DBCtrls, Grids, DBGrids,
  ComCtrls;

type
  TFormPagamentoDebitos = class(TForm)
    EditCodUsuario: TEdit;
    BitBtn1: TBitBtn;
    LabelUsuario: TLabel;
    Bevel1: TBevel;
    BitBtnPagarFitas: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Bevel2: TBevel;
    StatusBar1: TStatusBar;
    DBGridFitas: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure EditCodUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodUsuarioExit(Sender: TObject);
    procedure PESQUISA_FITAS;
    procedure BitBtnPagarFitasClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagamentoDebitos: TFormPagamentoDebitos;

implementation

uses PesquisaClientes, TabelasSQL, Tabelas;

{$R *.dfm}
procedure TFormPagamentoDebitos.PESQUISA_FITAS;
begin
  DMSQL.PesquisaDebitos.Close;
  DMSQL.PesquisaDebitos.SQL.Clear;
  DMSQL.PesquisaDebitos.SQL.Add('Select * from Clientes, Fitas, Fitass, Locacoes, FitasLocadas, TiposAluguel Where Clientes.Cli_Codigo = Locacoes.Loc_Cliente and ');
  DMSQL.PesquisaDebitos.SQL.Add('Fitas.Fit_Codigo = Fitass.Fits_Fita and Fitass.Fits_Codigo = FitasLocadas.Fitl_Fitass and Locacoes.Loc_Codigo = FitasLocadas.Fitl_Locacao and');
  DMSQL.PesquisaDebitos.SQL.Add('Fitas.Fit_TipoAluguel = TiposAluguel.Tip_Codigo and Fitl_Pago = "N"');
  DMSQL.PesquisaDebitos.SQL.Add('and Clientes.Cli_Codigo=:Codigo Order by Clientes.Cli_Nome');
  DMSQL.PesquisaDebitos.Params[0].AsInteger:=DMSQL.PesquisaClientesCli_Codigo.Value;
  DMSQL.PesquisaDebitos.Open;
end;

procedure TFormPagamentoDebitos.BitBtn1Click(Sender: TObject);
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
  end;

  DMSQL.PesquisaClientes.Close;

  PESQUISA_FITAS;
end;

procedure TFormPagamentoDebitos.EditCodUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  If not( key in['0'..'9',#8] ) then
  begin
    beep;
    key:=#0;
  end;
end;

procedure TFormPagamentoDebitos.EditCodUsuarioExit(Sender: TObject);
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
      PESQUISA_FITAS;
    end
    else
    Begin
      EditCodUsuario.SetFocus;
      DMSQL.PesquisaDebitos.Close;
      LabelUsuario.Caption:= 'Nenhum Usuário...';
      
    end;
 end;

 If Length(Trim(EditCodUsuario.Text)) = 0 Then
 Begin
   LabelUsuario.Caption:= 'Nenhum Usuário...';
   DMSQL.PesquisaDebitos.Close;
 end;

 DMSQL.PesquisaClientes.Close;
end;

procedure TFormPagamentoDebitos.BitBtnPagarFitasClick(Sender: TObject);
Var
  I:Integer;
  vTotal:Real;
  vPago:String;
begin
  I:=0;

  If (Length(Trim(EditCodUsuario.Text)) > 0) and (DMSQL.PesquisaDebitos.RecordCount > 0) Then
  Begin
    If (DBGridFitas.SelectedRows.Count = 0) Then
    Begin
      Application.MessageBox('Você precisa selecionar pelo menos uma fita para ser paga...','Pergunta...',Mb_IconError+Mb_Ok);
      ABORT;
    end;

    DM.FitasLocadas.Open;

    For I:=0 to DBGridFitas.SelectedRows.Count-1 do
    Begin
      DBGridFitas.DataSource.DataSet.Bookmark:=DBGridFitas.SelectedRows[I];

      If DMSQL.PesquisaDebitosFitl_Pago.Value = 'N' Then
          vTotal:=vTotal+DMSQL.PesquisaDebitosFitl_ValorAluguel.Value;
    end;

    If vTotal > 0 Then
    Begin
       If Application.MessageBox(PChar('Deseja Continuar?'+#13+'Total a pagar: --> '+FormatFloat('R$ #,##0.00',vTotal)),'Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrNo Then
        ABORT;
    end;

    For I:=0 to DBGridFitas.SelectedRows.Count-1 do
    Begin
      DBGridFitas.DataSource.DataSet.Bookmark:=DBGridFitas.SelectedRows[I];

      If DM.FitasLocadas.FindKey([DMSQL.PesquisaDebitosFitl_Codigo.Value]) Then
      Begin
        DM.FitasLocadas.Edit;

        If DMSQL.PesquisaDebitosFitl_Pago.Value = 'N' Then
           DM.FitasLocadasFitl_Pago.Value:='S';

        DM.FitasLocadas.Post;
      end;

    end;

    DM.FitasLocadas.Close;

    DMSQL.PesquisaClientes.Close;
    DMSQL.PesquisaClientes.SQL.Clear;
    DMSQL.PesquisaClientes.SQL.Add('Select Cli_Codigo,Cli_Nome,Cli_Apelido from Clientes Where Cli_Codigo =:Codigo ');
    DMSQL.PesquisaClientes.Params[0].AsInteger:= StrToInt(EditCodUsuario.Text);
    DMSQL.PesquisaClientes.Open;

    PESQUISA_FITAS;

    DMSQL.PesquisaClientes.Close;

    Application.MessageBox('Pagamento de débito efetuado com sucesso...','Informação...',Mb_IconInformation+Mb_Ok);
  end
  else
    Application.MessageBox('Você precisa preencher os dados corretamente para poder continuar...','Pergunta...',Mb_IconError+Mb_Ok);
end;

procedure TFormPagamentoDebitos.BitBtn3Click(Sender: TObject);
begin
   Close;
end;

procedure TFormPagamentoDebitos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMSQL.PesquisaDebitos.Close;
end;

end.
