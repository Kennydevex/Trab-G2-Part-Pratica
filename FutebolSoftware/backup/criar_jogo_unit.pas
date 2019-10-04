unit criar_jogo_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DateTimePicker;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    StaticText1: TStaticText;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.

