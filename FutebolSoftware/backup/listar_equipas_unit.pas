unit listar_equipas_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBGrids;

type

  { TFListarEquipas }

  TFListarEquipas = class(TForm)
    btnCriarEquipa1: TButton;
    DBGrid1: TDBGrid;
    StaticText1: TStaticText;
  private

  public

  end;

var
  FListarEquipas: TFListarEquipas;

implementation

{$R *.lfm}

end.

