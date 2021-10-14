unit untMenuPrincipal;

interface

uses
  SysUtils, StrUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Buttons, Vcl.ExtCtrls, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.Themes, Vcl.Styles, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmMenuPrincipal = class(TForm)
    cbbStylesThemes: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure cbbStylesThemesChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure carregarThema;
  public
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

uses
  untFormulario, untFormulario2;

{$R *.dfm}

procedure TfrmMenuPrincipal.Button1Click(Sender: TObject);
begin
  frmFormulario := TfrmFormulario.Create(Self);
  frmFormulario.Show;
end;

procedure TfrmMenuPrincipal.Button2Click(Sender: TObject);
begin
  frmFormulario2 := TfrmFormulario2.Create(Self);
  frmFormulario2.Show;
end;

procedure TfrmMenuPrincipal.carregarThema;
var
  stylesThemes : string;
begin
  cbbStylesThemes.Items.BeginUpdate;
  try
    cbbStylesThemes.Items.Clear;

    for stylesThemes in TStyleManager.StyleNames do
      cbbStylesThemes.Items.Add(stylesThemes);

    cbbStylesThemes.Sorted := True;
    cbbStylesThemes.ItemIndex := cbbStylesThemes.Items.IndexOf(TStyleManager.ActiveStyle.Name);
  finally
    cbbStylesThemes.Items.EndUpdate;
  end;
end;

procedure TfrmMenuPrincipal.cbbStylesThemesChange(Sender: TObject);
begin
  TStyleManager.TrySetStyle(cbbStylesThemes.Items[cbbStylesThemes.ItemIndex]);
end;

procedure TfrmMenuPrincipal.FormShow(Sender: TObject);
begin
  carregarThema;
end;

end.
