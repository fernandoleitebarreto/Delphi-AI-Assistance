unit DelphiAIDev.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TDelphiAIDevMainView = class(TForm)
    MainMenu: TMainMenu;
    Chat1: TMenuItem;
    mmChat: TMenuItem;
    N4: TMenuItem;
    mmDefaultsQuestion: TMenuItem;
    N5: TMenuItem;
    mmDatabaseRegisters: TMenuItem;
    mmDatabasesChat: TMenuItem;
    N6: TMenuItem;
    mmSettings: TMenuItem;
    mmAbout: TMenuItem;
    procedure mmDatabasesChatClick(Sender: TObject);
    procedure mmChatClick(Sender: TObject);
    procedure mmAboutClick(Sender: TObject);
    procedure mmDefaultsQuestionClick(Sender: TObject);
    procedure mmDatabaseRegistersClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelphiAIDevMainView: TDelphiAIDevMainView;

implementation

uses
  DelphiAIDev.Chat.View,
  DelphiAIDev.DB.Chat.View,
  DelphiAIDev.DB.Registers.View,
  DelphiAIDev.DefaultsQuestions.View,
  DelphiAIDev.View.About;

{$R *.dfm}

procedure TDelphiAIDevMainView.mmAboutClick(Sender: TObject);
var
  LView: TDelphiAIDevViewAbout;
begin
  LView := TDelphiAIDevViewAbout.Create(nil);
  try
    LView.ShowModal;
  finally
    FreeAndNil(LView);
  end;
end;

procedure TDelphiAIDevMainView.mmChatClick(Sender: TObject);
var
  LView: TDelphiAIDevChatView;
begin
  LView := TDelphiAIDevChatView.Create(nil);
  try
    LView.ShowModal;
  finally
    FreeAndNil(LView);
  end;
end;

procedure TDelphiAIDevMainView.mmDatabaseRegistersClick(Sender: TObject);
var
  LView: TDelphiAIDevDBRegistersView;
begin
  LView := TDelphiAIDevDBRegistersView.Create(nil);
  try
    LView.ShowModal;
  finally
    FreeAndNil(LView);
  end;

end;

procedure TDelphiAIDevMainView.mmDatabasesChatClick(Sender: TObject);
var
  LView: TDelphiAIDevDBChatView;
begin
  LView := TDelphiAIDevDBChatView.Create(nil);
  try
    LView.ShowModal;
  finally
    FreeAndNil(LView);
  end;
end;

procedure TDelphiAIDevMainView.mmDefaultsQuestionClick(Sender: TObject);
var
  LView: TDelphiAIDevDefaultsQuestionsView;
begin
  LView := TDelphiAIDevDefaultsQuestionsView.Create(nil);
  try
    LView.ShowModal;
  finally
    FreeAndNil(LView);
  end;

end;

end.
