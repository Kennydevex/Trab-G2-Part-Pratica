unit listar_equipas_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBGrids, criar_equipas_unit;

type

  { TFListarEquipas }

  TFListarEquipas = class(TForm)
    btnCriarEquipa1: TButton;
    DBGrid1: TDBGrid;
    StaticText1: TStaticText;
    procedure btnCriarEquipa1Click(Sender: TObject);
  private

  public

  end;

var
  FListarEquipas: TFListarEquipas;

implementation

{$R *.lfm}

{ TFListarEquipas }

procedure TFListarEquipas.btnCriarEquipa1Click(Sender: TObject);
begin
  FCriarEquipa.ShowModal;
end;

end.

