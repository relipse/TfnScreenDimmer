unit unitMainForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    mniFullScreen: TMenuItem;
    mni25: TMenuItem;
    mni50: TMenuItem;
    mni75: TMenuItem;
    mni0: TMenuItem;
    mniTransparency: TMenuItem;
    mniExit: TMenuItem;
    mnuPopup: TPopupMenu;
    procedure mni0Click(Sender: TObject);
    procedure mni25Click(Sender: TObject);
    procedure mni50Click(Sender: TObject);
    procedure mni75Click(Sender: TObject);
    procedure mniExitClick(Sender: TObject);
    procedure mniFullScreenClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.mniExitClick(Sender: TObject);
begin
  Close();
end;

procedure TForm1.mniFullScreenClick(Sender: TObject);
begin
   mniFullScreen.Checked := not (mniFullScreen.Checked);
   if mniFullScreen.Checked then
   begin
     WindowState := wsFullScreen;
   end else begin
     WindowState := wsNormal;
   end;
end;

procedure TForm1.mni75Click(Sender: TObject);
begin
   AlphaBlend := true;
   AlphaBlendValue := 64;
end;

procedure TForm1.mni25Click(Sender: TObject);
begin
  AlphaBlend := true;
  AlphaBlendValue := 191;
end;

procedure TForm1.mni0Click(Sender: TObject);
begin
  AlphaBlend := false;
  AlphaBlendValue := 255;
end;

procedure TForm1.mni50Click(Sender: TObject);
begin
   AlphaBlend := true;
   AlphaBlendValue := 127;
end;

end.

