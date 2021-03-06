unit U_FrmIndex;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWVCLComponent, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWTemplateProcessorHTML;

type
  TFrmIndex = class(TIWAppForm)
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    btnLogin: TIWButton;
    procedure btnLoginAsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TFrmIndex.btnLoginAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
//  PageContext.AddToInitProc('alterarNomeButton()');
  WebApplication.CallBackResponse.AddJavaScriptToExecute('alterarNomeButton()');
end;



initialization
  TFrmIndex.SetAsMainForm;

end.
