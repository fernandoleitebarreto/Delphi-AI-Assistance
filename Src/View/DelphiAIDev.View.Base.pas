unit DelphiAIDev.View.Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DockForm;

type
{$IFDEF IGNORE_CODE_ENABLED}
  TDelphiAIBaseView = class(TForm)
{$ELSE}
  TDelphiAIBaseView = class(TDockableForm)
{$ENDIF}
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelphiAIBaseView: TDelphiAIBaseView;

implementation

{$R *.dfm}

end.
