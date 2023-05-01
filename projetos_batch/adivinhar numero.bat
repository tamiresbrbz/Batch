@echo off
title Projeto SORTEIO
mode 50,30
color 04
:inicio
set /a cont=6
set /a numero=(%random% %% 50) + 1
:sorteio
cls
set /a cont=%cont% - 1
echo.
echo       88888   88          8   88     88
echo       88  88  88         888   88   88
echo       88888   88        88 88   88 88
echo       88      88       88   88   88
echo       88      888888  888888888  88
echo       88      888888  88     88  88
echo.             
echo                     _/\_/\_
echo                    /_() ()_\
echo                    \  ---  /
echo ================ooOO=======OOoo===============
echo.
echo ADIVINHE OS NUMEROS SORTEADOS ENTRE 01 E 50
echo.
echo ----------------------------------------------
echo QUANTIDADE DE TENTATIVAS: %cont%
echo ----------------------------------------------
echo ==============================================
echo.
set /p sort= DIGITE SEU PALPITE: 
if %cont% ==0 (goto:perdeu)
if %sort% == %numero% (goto:ganhou)
if %sort% LSS %numero% (goto:menor)
if %sort% GTR %numero% (goto:maior)

:perdeu
echo ----------------------------------------------
echo          Que pena ;-; Vc Perdeu...
echo         O numero sorteado era: %numero%
echo ----------------------------------------------
pause > nul
set /p jgr=DESEJA JOGAR NOVAMENTE? ^-^ [S/N] 
if /i %jgr% == n (exit) else (goto inicio)

:ganhou
echo ------------------------------------------------
echo         UHUUL !!! PARABENS \o/ Vc Ganhou !!!
echo           O numero sorteado foi: %numero%
echo ------------------------------------------------
pause > nul
echo.
set /p jgr= DESEJA JOGAR NOVAMENTE? ^~^ [S/N] 
if /i %jgr% == S (goto:inicio) else (exit) 

:menor
echo.
echo --------------------------------------------
echo     QUASE... ~_~ TENTE UM NUMERO MAIOR !!!
echo --------------------------------------------
pause > nul
goto sorteio

:maior
echo.
echo ---------------------------------------------
echo      QUASE... ~_~ TENTE UM NUMERO MENOR !!!
echo ---------------------------------------------
pause > nul
goto sorteio
