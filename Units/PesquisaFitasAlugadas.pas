unit PesquisaFitasAlugadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids, DBGrids;

type
  TFormPesquisaFitasAlugadas = class(TForm)
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
  FormPesquisaFitasAlugadas: TFormPesquisaFitasAlugadas;

implementation

uses TabelasSQL;


{$R *.dfm}

procedure TFormPesquisaFitasAlugadas.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPesquisaFitasAlugadas.BitPesquisarClick(Sender: TObject);
Var
 vPesquisa:String;
begin
  Case RadioTipoPesquisa.ItemIndex of
    0: vPesquisa:=EditPesquisa.Text+'%';
    1: vPesquisa:='%'+EditPesquisa.Text+'%';
    2: vPesquisa:='%'+EditPesquisa.Text;
  end;

  DMSQL.PesquisaFitasAlugadas.Close;
  DMSQL.PesquisaFitasAlugadas.SQL.Clear;
  DMSQL.PesquisaFitasAlugadas.SQL.Add('Select Fit_Codigo, Fits_Codigo,Fit_Nome,Fits_Alugada,Fit_TipoAluguel, Tip_Valor, Tip_Nome from Fitas, Fitass, TiposAluguel Where Fit_Codigo = Fits_Fita and Fit_TipoAluguel = Tip_Codigo and Fits_Alugada = "N"');

  Case RadioProcurar.ItemIndex of
    0: Begin
         DMSQL.PesquisaFitasAlugadas.SQL.Add('and Fit_Nome Like :Nome ');
         DMSQL.PesquisaFitasAlugadas.Params[0].AsString:=vPesquisa;
       end;

    1: Begin
         DMSQL.PesquisaFitasAlugadas.SQL.Add('and Fit_Codigo =:Codigo ');
         DMSQL.PesquisaFitasAlugadas.Params[0].AsInteger:=StrToInt(EditPesquisa.Text);
       end;

    2: Begin
         DMSQL.PesquisaFitasAlugadas.SQL.Add('and Fits_Codigo Like :Codigo ');
         DMSQL.PesquisaFitasAlugadas.Params[0].AsString:=vPesquisa;
       end;
  end;

  DMSQL.PesquisaFitasAlugadas.Open;
end;

procedure TFormPesquisaFitasAlugadas.EditPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_Return Then
    BitPesquisar.Click;
end;

end.
