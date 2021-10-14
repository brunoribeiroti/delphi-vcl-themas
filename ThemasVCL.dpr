program ThemasVCL;

uses
  Vcl.Forms,
  untMenuPrincipal in 'untMenuPrincipal.pas' {frmMenuPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  untFormulario in 'untFormulario.pas' {frmFormulario},
  untFormulario2 in 'untFormulario2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.CreateForm(TfrmFormulario, frmFormulario);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
