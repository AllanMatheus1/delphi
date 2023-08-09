program LayoutMenu;

uses
  System.StartUpCopy,
  FMX.Forms,
  Layout in 'Layout.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
