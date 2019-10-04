program main;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, datetimectrls, main_unit, criar_jogador_unit, listar_jogadores_unit,
  listar_jogos_unit, criar_jogo_unit, criar_equipas_unit, listar_equipas_unit,
  listar_convocatorias_unit, criar_concocatoria_unit, criar_ocupacao_unit,
  listar_ocupacao_unit, listar_posicoes_unit, criar_posicao_unit
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFCriarJogador, FCriarJogador);
  Application.CreateForm(TFListarJogadores, FListarJogadores);
  Application.CreateForm(TFListarJogos, FListarJogos);
  Application.CreateForm(TFCriarJogo, FCriarJogo);
  Application.CreateForm(TFCriarEquipa, FCriarEquipa);
  Application.CreateForm(TFListarEquipas, FListarEquipas);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TFCriarPosicao, FCriarPosicao);
  Application.Run;
end.

