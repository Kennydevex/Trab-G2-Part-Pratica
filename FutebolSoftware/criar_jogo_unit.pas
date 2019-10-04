unit criar_jogo_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DateTimePicker;

type

  { TFCriarJogo }

  TFCriarJogo = class(TForm)
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    StaticText1: TStaticText;
  private

  public

  end;

var
  FCriarJogo: TFCriarJogo;

implementation

{$R *.lfm}

end.

