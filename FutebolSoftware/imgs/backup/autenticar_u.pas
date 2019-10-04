unit autenticar_u;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TFLogin }

  TFLogin = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    TUtilizador: TEdit;
    TBase_de_dados: TEdit;
    Image1: TImage;
    Panel1: TPanel;
  private

  public

  end;

var
  FLogin: TFLogin;

implementation

{$R *.lfm}

end.

