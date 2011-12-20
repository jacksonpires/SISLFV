unit LocacaoFitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFormLocacaoFitas = class(TForm)
    EditCodFita: TEdit;
    Bevel1: TBevel;
    StatusBar1: TStatusBar;
    Bevel2: TBevel;
    BitBtnProcurarFita: TBitBtn;
    BitBtnFechar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnLocacao: TBitBtn;
    BitBtnCancelar: TBitBtn;
    Label1: TLabel;
    BitBtnApagarFita: TBitBtn;
    Bevel3: TBevel;
    EditCodUsuario: TEdit;
    BitBtnProcurarUsuario: TBitBtn;
    LabelUsuario: TLabel;
    ListBoxFitas: TListBox;
    LabelTotal: TLabel;
    LabelData: TLabel;
    Bevel4: TBevel;
    Label2: TLabel;
    Procedure INSERIR_LOCACAO;
    Procedure GRAVAR_CANCELAR_LOCACAO;
    procedure BitBtnLocacaoClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnProcurarUsuarioClick(Sender: TObject);
    procedure BitBtnProcurarFitaClick(Sender: TObject);
    procedure BitBtnFecharClick(Sender: TObject);
    procedure BitBtnApagarFitaClick(Sender: TObject);
    procedure EditCodUsuarioExit(Sender: TObject);
    procedure EditCodUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodFitaExit(Sender: TObject);
  private
    vTotal:Real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLocacaoFitas: TFormLocacaoFitas;

implementation

uses PesquisaClientes, TabelasSQL, Tabelas, PesquisaFitasAlugadas;

{$R *.dfm}

Procedure TFormLocacaoFitas.GRAVAR_CANCELAR_LOCACAO;
begin
  BitBtnLocacao.Enabled:=True;
  BitBtnGravar.Enabled:=False;
  BitBtnCancelar.Enabled:=False;
  BitBtnFechar.Enabled:=True;
  ListBoxFitas.Enabled:=False;
  ListBoxFitas.Color:=clBtnface;
  EditCodFita.Enabled:=False;
  EditCodFita.Color:=clBtnFace;
  EditCodFita.Font.Color:=clGray;
  BitBtnProcurarFita.Enabled:=False;
  BitBtnApagarFita.Enabled:=False;
  EditCodUsuario.Enabled:=False;
  EditCodUsuario.Color:=clBtnFace;
  EditCodUsuario.Font.Color:=ClGray;
  BitBtnProcurarUsuario.Enabled:=False;
  LabelUsuario.Font.Color:=ClGray;
  EditCodFita.Clear;
  EditCodUsuario.Clear;
  LabelUsuario.Caption:='Nenhum Usuário...';
  ListBoxFitas.Clear;
  LabelTotal.Caption:='Total:R$ 0,00';
  LabelTotal.Font.Color:=ClGray;
  LabelData.Font.Color:=ClGray;
  LabelData.Caption:='Data da Locação: 00/00/0000';
end;


Procedure TFormLocacaoFitas.INSERIR_LOCACAO;
begin
  BitBtnLocacao.Enabled:=False;
  BitBtnGravar.Enabled:=True;
  BitBtnCancelar.Enabled:=True;
  BitBtnFechar.Enabled:=False;
  ListBoxFitas.Enabled:=True;
  ListBoxFitas.Color:=clWindow;
  EditCodFita.Enabled:=True;
  EditCodFita.Color:=clWindow;
  EditCodFita.Font.Color:=clBlack;
  BitBtnProcurarFita.Enabled:=True;
  BitBtnApagarFita.Enabled:=True;
  EditCodUsuario.Enabled:=True;
  EditCodUsuario.Color:=clWindow;
  EditCodUsuario.Font.Color:=ClBlack;
  BitBtnProcurarUsuario.Enabled:=True;
  LabelUsuario.Font.Color:=ClMaroon;
  LabelTotal.Font.Color:=ClNavy;
  LabelData.Font.Color:=ClMaroon;
  LabelData.Caption:='Data da Locação: '+DateToStr(Date);
end;

procedure TFormLocacaoFitas.BitBtnLocacaoClick(Sender: TObject);
begin
  vTotal:=0;
  INSERIR_LOCACAO;
  EditCodUsuario.SetFocus;
end;

procedure TFormLocacaoFitas.BitBtnGravarClick(Sender: TObject);
Var
  I:Integer;
  vPagamento:String;
begin
  I:=0;

  DM.Locacoes.Open;
  DM.FitasLocadas.Open;
  DM.Fitass.Open;

  If (Length(Trim(EditCodUsuario.Text)) > 0) and (ListBoxFitas.Count > 0) Then
  Begin

    If Application.MessageBox('Pagamento a vista?','Pergunta...',Mb_IconExclamation+Mb_YesNo)= MrYes Then
      vPagamento:='S'
    else
      vPagamento:='N';

    DM.Locacoes.Insert;
    DM.LocacoesLoc_Cliente.Value:=StrToInt(EditCodUsuario.Text);
    DM.LocacoesLoc_DataAluguel.Value:=Date;
    DM.LocacoesLoc_HoraAluguel.Value:=Time;
    DM.LocacoesLoc_Usuario.Value:=DMSQL.PesquisaUsuariosUsu_Codigo.Value;
    DM.Locacoes.Post;

    For I:=0 to ListBoxFitas.Count-1 do
    Begin
      DMSQL.PesquisaFitasAlugadas.Close;
      DMSQL.PesquisaFitasAlugadas.SQL.Clear;
      DMSQL.PesquisaFitasAlugadas.SQL.Add('Select Fit_Codigo, Fits_Codigo,Fit_Nome,Fits_Alugada,Fit_TipoAluguel, Tip_Valor, Tip_Nome from Fitas, Fitass, TiposAluguel Where Fit_Codigo = Fits_Fita and Fit_TipoAluguel = Tip_Codigo and Fits_Alugada = "N"');
      DMSQL.PesquisaFitasAlugadas.SQL.Add('and Fits_Codigo =:Codigo ');
      DMSQL.PesquisaFitasAlugadas.Params[0].AsString:=Copy(ListBoxFitas.Items.Strings[I],1,7);
      DMSQL.PesquisaFitasAlugadas.Open;

      DM.FitasLocadas.Insert;
      DM.FitasLocadasFitl_Locacao.Value:=DM.LocacoesLoc_Codigo.Value;
      DM.FitasLocadasFitl_Fitass.Value;
      DM.FitasLocadasFitl_Fitass.Value:=DMSQL.PesquisaFitasAlugadasFits_Codigo.Value;
      DM.FitasLocadasFitl_ValorAluguel.Value:=DMSQL.PesquisaFitasAlugadasTip_Valor.Value;
      DM.FitasLocadasFitl_Pago.Value:=vPagamento;
      DM.FitasLocadasFitl_Devolvido.Value:='N';
      DM.FitasLocadas.Post;

      DMSQL.SQL.Close;
      DMSQL.SQL.SQL.Clear;
      DMSQL.SQL.SQL.Add('Update Fitass set Fits_Alugada="S" Where Fits_Codigo=:Codigo');
      DMSQL.SQL.Params[0].AsString:=DMSQL.PesquisaFitasAlugadasFits_Codigo.Value;
      DMSQL.SQL.ExecSQL;
    end;

    GRAVAR_CANCELAR_LOCACAO;

    Application.MessageBox('Locação efetuada com sucesso...','Informação...',Mb_IconInformation+Mb_Ok);
  end
  else
    Application.MessageBox('Você precisa preencher os dados corretamente para poder continuar...','Pergunta...',Mb_IconError+Mb_Ok);


  DM.Locacoes.Close;
  DM.FitasLocadas.Close;
  DM.Fitass.Close;  
end;

procedure TFormLocacaoFitas.BitBtnCancelarClick(Sender: TObject);
begin
  GRAVAR_CANCELAR_LOCACAO;
end;

procedure TFormLocacaoFitas.BitBtnProcurarUsuarioClick(Sender: TObject);
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
end;

procedure TFormLocacaoFitas.BitBtnProcurarFitaClick(Sender: TObject);
begin
  FormPesquisaFitasAlugadas:=TFormPesquisaFitasAlugadas.Create(Application);

  DMSQL.PesquisaFitasAlugadas.Open;

  FormPesquisaFitasAlugadas.ShowModal;
  FormPesquisaFitasAlugadas.Free;
  FormPesquisaFitasAlugadas:=Nil;


  If DMSQL.PesquisaFitasAlugadas.RecordCount > 0 Then
  Begin
     EditCodFita.Clear;
     vTotal:=vTotal+DMSQL.PesquisaFitasAlugadasTip_Valor.Value;
     ListBoxFitas.Items.Add(DMSQL.PesquisaFitasAlugadasFits_Codigo.Value+' - '+DMSQL.PesquisaFitasAlugadasFit_Nome.Value +' - ['+DMSQL.PesquisaFitasAlugadasTip_Nome.Value+' - '+FormatFloat('R$ #,##0.00',DMSQL.PesquisaFitasAlugadasTip_Valor.Value)+']');
     LabelTotal.Caption:=FormatFloat('Total: R$ #,##0.00',vTotal);
  end;

  DMSQL.PesquisaFitasAlugadas.Close;
end;

procedure TFormLocacaoFitas.BitBtnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFormLocacaoFitas.BitBtnApagarFitaClick(Sender: TObject);
begin
  If ListBoxFitas.ItemIndex >= 0 Then
  Begin
    If Application.MessageBox(Pchar('Deseja realmente apagar esta Fita?'+#13+'('+ListBoxFitas.Items[ListBoxFitas.ItemIndex]+')'),'Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrYes Then
    Begin
      DMSQL.PesquisaFitas.Close;
      DMSQL.PesquisaFitas.SQL.Clear;
      DMSQL.PesquisaFitas.SQL.Add('Select Fit_Codigo, Fits_Codigo,Fit_Nome, Fit_TipoAluguel, Tip_Valor, Tip_Nome from Fitas, Fitass, TiposAluguel Where Fit_Codigo = Fits_Fita and Fit_TipoAluguel = Tip_Codigo');
      DMSQL.PesquisaFitas.SQL.Add('and Fits_Codigo =:Codigo ');
      DMSQL.PesquisaFitas.Params[0].AsString:=Copy(ListBoxFitas.Items[ListBoxFitas.ItemIndex],1,7);
      DMSQL.PesquisaFitas.Open;

      ListBoxFitas.DeleteSelected;
      vTotal:= vTotal - DMSQL.PesquisaFitasTip_Valor.Value;
      LabelTotal.Caption:=FormatFloat('Total: R$ #,##0.00',vTotal);
    end;
  end
  else
    ShowMessage('Você deve primeiro selecionar uma fita!!!');
end;


procedure TFormLocacaoFitas.EditCodUsuarioExit(Sender: TObject);
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
    end
    else
    Begin
      EditCodUsuario.SetFocus;
      LabelUsuario.Caption:= 'Nenhum Usuário...';
    end;
 end;

 If Length(Trim(EditCodUsuario.Text)) = 0 Then
   LabelUsuario.Caption:= 'Nenhum Usuário...';

 DMSQL.PesquisaClientes.Close;
end;

procedure TFormLocacaoFitas.EditCodUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  If not( key in['0'..'9',#8] ) then
  begin
    beep;
    key:=#0;
  end;
end;

procedure TFormLocacaoFitas.EditCodFitaExit(Sender: TObject);
begin
  If (Length(Trim(EditCodFita.Text)) > 0)  Then  //(DM.PesquisaTituloscodexemplar.Value <> EditCodLivro.Text)
  Begin
    DMSQL.PesquisaFitasAlugadas.Close;
    DMSQL.PesquisaFitasAlugadas.SQL.Clear;
    DMSQL.PesquisaFitasAlugadas.SQL.Add('Select Fit_Codigo, Fits_Codigo,Fit_Nome,Fits_Alugada,Fit_TipoAluguel, Tip_Valor, Tip_Nome from Fitas, Fitass, TiposAluguel Where Fit_Codigo = Fits_Fita and Fit_TipoAluguel = Tip_Codigo and Fits_Alugada = "N"');
    DMSQL.PesquisaFitasAlugadas.SQL.Add('and Fits_Codigo =:Codigo');
    DMSQL.PesquisaFitasAlugadas.Params[0].AsString:= EditCodFita.Text;
    DMSQL.PesquisaFitasAlugadas.Open;

    If DMSQL.PesquisaFitasAlugadas.RecordCount > 0 Then
    Begin
      //EditCodFita.Clear;
      vTotal:=vTotal+DMSQL.PesquisaFitasAlugadasTip_Valor.Value;
      ListBoxFitas.Items.Add(DMSQL.PesquisaFitasAlugadasFits_Codigo.Value+' - '+DMSQL.PesquisaFitasAlugadasFit_Nome.Value +' - ['+DMSQL.PesquisaFitasAlugadasTip_Nome.Value+' - '+FormatFloat('R$ #,##0.00',DMSQL.PesquisaFitasAlugadasTip_Valor.Value)+']');
      LabelTotal.Caption:=FormatFloat('Total: R$ #,##0.00',vTotal);
    end
    else
      ShowMessage('Este livro não existe ou está emprestado!!!');

    EditCodFita.SetFocus;
  end;

  EditCodFita.Clear;
end;

end.
