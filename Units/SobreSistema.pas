unit SobreSistema;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TFormSobreSistema = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    FormSobreSistema: TLabel;
    Version: TLabel;
    Comments: TLabel;
    OKButton: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSobreSistema: TFormSobreSistema;

implementation

{$R *.dfm}

end.
 
