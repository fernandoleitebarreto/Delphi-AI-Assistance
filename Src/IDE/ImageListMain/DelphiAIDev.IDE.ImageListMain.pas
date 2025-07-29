unit DelphiAIDev.IDE.ImageListMain;

interface

uses
  System.SysUtils,
  System.Classes;

type
  TDelphiAIDevIDEImageListMain = class
  private
    FImgIndexC4D_Logo: Integer;
    FImgIndexGear: Integer;
    FImgIndexMessage: Integer;
    FImgQuestion: Integer;
    FImgDatabase: Integer;
    FImgDatabaseAdd: Integer;
    FImgDatabaseExecute: Integer;
    constructor Create;
  public
    class function GetInstance: TDelphiAIDevIDEImageListMain;
    property ImgIndexC4D_Logo: Integer read FImgIndexC4D_Logo;
    property ImgIndexGear: Integer read FImgIndexGear;
    property ImgIndexMessage: Integer read FImgIndexMessage;
    property ImgQuestion: Integer read FImgQuestion;
    property ImgDatabase: Integer read FImgDatabase;
    property ImgDatabaseAdd: Integer read FImgDatabaseAdd;
    property ImgDatabaseExecute: Integer read FImgDatabaseExecute;
  end;

implementation

uses
  DelphiAIDev.Utils.OTA;

var
  Instance: TDelphiAIDevIDEImageListMain;

class function TDelphiAIDevIDEImageListMain.GetInstance: TDelphiAIDevIDEImageListMain;
begin
  if not Assigned(Instance) then
    Instance := Self.Create;
  Result := Instance;
end;

constructor TDelphiAIDevIDEImageListMain.Create;
begin
  FImgIndexC4D_Logo := 0; //TUtilsOTA.AddImgIDEResourceName('c4d_logo');
  FImgIndexGear := 0; //TUtilsOTA.AddImgIDEResourceName('c4d_gear');
  FImgIndexMessage := 0; //TUtilsOTA.AddImgIDEResourceName('c4d_message');
  FImgQuestion  := 0; //TUtilsOTA.AddImgIDEResourceName('c4d_question');
  FImgDatabase  := 0; //TUtilsOTA.AddImgIDEResourceName('c4d_database');
  FImgDatabaseAdd  := 0; //TUtilsOTA.AddImgIDEResourceName('c4d_database_add');
  FImgDatabaseExecute  := 0; //TUtilsOTA.AddImgIDEResourceName('c4d_database_execute');
end;

initialization
  Instance := TDelphiAIDevIDEImageListMain.GetInstance;

finalization
  if Assigned(Instance) then
    Instance.Free;

end.
