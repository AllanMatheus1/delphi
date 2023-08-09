unit Layout;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani;

type
  TFrmPrincipal = class(TForm)
    rectBarMenu: TRectangle;
    lblBarName: TLabel;
    imgBarMenu: TImage;
    rectMenuLateral: TRectangle;
    AnimationMenuLateral: TFloatAnimation;
    Image1: TImage;
    imgCloseMenu: TImage;
    procedure imgBarMenuClick(Sender: TObject);
    procedure AnimationMenuLateralFinish(Sender: TObject);
  private
    { Private declarations }
  public
  procedure MenuLateral;
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

procedure TFrmPrincipal.AnimationMenuLateralFinish(Sender: TObject);
begin
    AnimationMenuLateral.Inverse := NOT AnimationMenuLateral.Inverse;
end;

procedure TFrmPrincipal.imgBarMenuClick(Sender: TObject);
begin
    MenuLateral;
end;

procedure TFrmPrincipal.MenuLateral;
begin
    AnimationMenuLateral.Start;
end;

end.
