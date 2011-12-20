unit HistoricoLocacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, DBGrids;

type
  TFormHistoricoLocacoes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    BitBtn1: TBitBtn;
    DBGridLocacoes: TDBGrid;
    Bevel1: TBevel;
    Label1: TLabel;
    DBGridFitasLocadas: TDBGrid;
    Bevel2: TBevel;
    Label2: TLabel;
    EditCodUsuario: TEdit;
    Bevel3: TBevel;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    LabelUsuario: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure EditCodUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodUsuarioExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHistoricoLocacoes: TFormHistoricoLocacoes;

implementation

uses Tabelas, TabelasSQL, PesquisaClientes;

{$R *.dfm}


procedure TFormHistoricoLocacoes.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormHistoricoLocacoes.EditCodUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  If not( key in['0'..'9',#8] ) then
  begin
    beep;
    key:=#0;
  end;
end;

procedure TFormHistoricoLocacoes.EditCodUsuarioExit(Sender: TObject);
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

      DM.Locacoes.Filtered:=False;
      DM.Locacoes.Filter:='Loc_Cliente ='+EditCodUsuario.Text;
      DM.Locacoes.Filtered:=True;
    end
    else
    Begin
      DM.Locacoes.Filtered:=False;    
      EditCodUsuario.SetFocus;
      LabelUsuario.Caption:= 'Nenhum Usuário...';
    end;
 end;

 If Length(Trim(EditCodUsuario.Text)) = 0 Then
 Begin
   DM.Locacoes.Filtered:=False;
   LabelUsuario.Caption:= 'Nenhum Usuário...';
 end;
 
 DMSQL.PesquisaClientes.Close;
end;

procedure TFormHistoricoLocacoes.BitBtn2Click(Sender: TObject);
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

    DM.Locacoes.Filtered:=False;
    DM.Locacoes.Filter:='Loc_Cliente ='+EditCodUsuario.Text;
    DM.Locacoes.Filtered:=True;
  end;

  DMSQL.PesquisaClientes.Close;
end;

end.
