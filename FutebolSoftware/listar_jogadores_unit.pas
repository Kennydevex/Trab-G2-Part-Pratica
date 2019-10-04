unit listar_jogadores_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, DBGrids;

type

  { TFListarJogadores }

  TFListarJogadores = class(TForm)
    DBGrid1: TDBGrid;
  private

  public

  end;

var
  FListarJogadores: TFListarJogadores;

implementation

{$R *.lfm}

end.

