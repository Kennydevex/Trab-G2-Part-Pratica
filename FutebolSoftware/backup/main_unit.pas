unit main_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mssqlconn, sqldb, db, Forms, Controls, Graphics, Dialogs,
  Menus, DBGrids, StdCtrls, ExtCtrls, criar_jogador_unit, listar_jogadores_unit,
  criar_equipas_unit, listar_equipas_unit, criar_posicao_unit;

type

  { TFMain }

  TFMain = class(TForm)
    btnNovoj: TButton;
    DadosJogadores: TDataSource;
    DadosEquipas: TDataSource;
    DadosDinamicos: TDataSource;
    DadosPosicoes: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    DBCon: TMSSQLConnection;
    ListarJogadores: TSQLQuery;
    DBTran: TSQLTransaction;
    QListarEquipas: TSQLQuery;
    QCommon: TSQLQuery;
    ListarPosicoes: TSQLQuery;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    Timer1: TTimer;
    procedure btnNovojClick(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private

  public

  end;

var
  FMain: TFMain;

implementation

{$R *.lfm}

{ TFMain }


procedure TFMain.MenuItem2Click(Sender: TObject);
begin
  close;
end;

procedure TFMain.btnNovojClick(Sender: TObject);
begin
  FCriarJogador.ShowModal;
end;

procedure TFMain.MenuItem11Click(Sender: TObject);
begin
   FListarJogadores.ShowModal;
end;

procedure TFMain.MenuItem12Click(Sender: TObject);
begin
  FCriarEquipa.ShowModal;
end;

procedure TFMain.MenuItem13Click(Sender: TObject);
begin
  FListarEquipas.ShowModal;
end;

procedure TFMain.MenuItem15Click(Sender: TObject);
begin
  FCriarPosicao.ShowModal;
end;

end.

