unit criar_jogador_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, DBCtrls, DateTimePicker;

type

  { TFCriarJogador }

  TFCriarJogador = class(TForm)
    btnGuardarJogador: TButton;
    btnCancelarJogador: TButton;
    DadosEquipas: TDataSource;
    QCriarJogador: TSQLQuery;
    TDataNascimento: TDateTimePicker;
    TEquipa: TDBComboBox;
    Image1: TImage;
    ListarEquipas: TSQLQuery;
    TEmailJogador: TEdit;
    TTelefone: TEdit;
    TNif: TEdit;
    TEndereco: TEdit;
    TNumeroJogador: TEdit;
    TApelido: TEdit;
    TNomeJogador: TEdit;
    procedure btnCancelarJogadorClick(Sender: TObject);
    procedure btnGuardarJogadorClick(Sender: TObject);
  private

  public

  end;

var
  FCriarJogador: TFCriarJogador;

implementation

{$R *.lfm}

{ TFCriarJogador }

procedure TFCriarJogador.btnCancelarJogadorClick(Sender: TObject);
begin
  close;
end;

procedure TFCriarJogador.btnGuardarJogadorClick(Sender: TObject);
var sqlCriarJogador: String;
begin
     sqlCriarJogador := 'INSERT INTO jogadores(nome, apelido, numero, data_nascimento, telefone, email, nif, equipa_id) VALUES (:nome, :apelido, :numero, :data_nascimento, :telefone, :email, :nif, :id_equipa)';
     QCriarJogador.SQL.Text:=sqlCriarJogador;
     QCriarJogador.ParamByName('nome').AsString:=TNomeJogador.Text;
     QCriarJogador.ParamByName('apelido').AsString:=TApelido.Text;
     QCriarJogador.ParamByName('numero').AsString:=TNumeroJogador.Text;
     QCriarJogador.ParamByName('data_nascimento').AsDate:=TDataNascimento.Date;
     QCriarJogador.ParamByName('telefone').AsString:=TTelefone.Text;
     QCriarJogador.ParamByName('email').AsString:=TEmailJogador.Text;
     QCriarJogador.ParamByName('nif').AsString:=TNif.Text;
     QCriarJogador.ParamByName('id_equipa').AsString:='1';
     QCriarJogador.ExecSQL;
     QCriarJogador.SQLTransaction.Commit;
close;

end;

end.

