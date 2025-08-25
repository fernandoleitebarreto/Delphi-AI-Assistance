object DelphiAIDevMainView: TDelphiAIDevMainView
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 187
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  TextHeight = 15
  object MainMenu: TMainMenu
    Left = 480
    Top = 336
    object Chat1: TMenuItem
      Caption = 'Main'
      object mmChat: TMenuItem
        Caption = 'Chat'
        OnClick = mmChatClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object mmDefaultsQuestion: TMenuItem
        Caption = 'Defaults questions'
        OnClick = mmDefaultsQuestionClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object mmDatabaseRegisters: TMenuItem
        Caption = 'Databases Registers'
        OnClick = mmDatabaseRegistersClick
      end
      object mmDatabasesChat: TMenuItem
        Caption = 'Databases Chat'
        OnClick = mmDatabasesChatClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object mmSettings: TMenuItem
        Caption = 'Settings'
      end
    end
    object mmAbout: TMenuItem
      Caption = 'About'
      OnClick = mmAboutClick
    end
  end
end
