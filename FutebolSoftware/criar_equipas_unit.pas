unit criar_equipas_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, Forms, Controls, Graphics, Dialogs, StdCtrls,
  DateTimePicker;

type

  { TFCriarEquipa }

  TFCriarEquipa = class(TForm)
    btnCriarEquipa: TButton;
    btnSairEquipa: TButton;
    QCriarEquipa: TSQLQuery;
    StaticText1: TStaticText;
    TFundacaoEquipa: TDateTimePicker;
    TNomeEquipa: TEdit;
    TLocalEquipa: TEdit;
    procedure btnCriarEquipaClick(Sender: TObject);
    procedure btnSairEquipaClick(Sender: TObject);
  private

  public

  end;

var
  FCriarEquipa: TFCriarEquipa;

implementation

{$R *.lfm}

{ TFCriarEquipa }

procedure TFCriarEquipa.btnCriarEquipaClick(Sender: TObject);
var sqlCriarEquipa :String;
begin
     sqlCriarEquipa := 'INSERT INTO equipas(nome, fundacao) VALUES (:nome, :fundacao)';
     QCriarEquipa.SQL.Text:=sqlCriarEquipa;
     QCriarEquipa.prepare;
     QCriarEquipa.ParamByName('nome').AsString:=TNomeEquipa.Text;
     QCriarEquipa.ParamByName('fundacao').AsDate:=TFundacaoEquipa.Date;
     QCriarEquipa.ExecSQL;
     QCriarEquipa.SQLTransaction.Commit;
     close;
end;

procedure TFCriarEquipa.btnSairEquipaClick(Sender: TObject);
begin
  close
end;

end.

