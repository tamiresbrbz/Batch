@echo off
title Projeto JO-KEN-PO
mode 90,30
color 06
:inicio
cls
set /a contV=0
set /a contD=0
set /a contE=0
echo                     _/\_/\_
echo                    /_() ()_\
echo                    \  ---  /
echo ================ooOO=======OOoo===============
echo ------------------------------------------
set /p nome=Digite seu nome \(*o*)/: 
:jogo
cls
set /a pc= (%random% %% 5) + 1
echo                     _/\_/\_
echo                    /_() ()_\
echo                    \  ---  /
echo ================ooOO=======OOoo===============
echo ------------------------------------------
echo Digite seu nome \(*o*)/: %nome%
echo.
echo ==========================================================================
echo ------------------------------------------------------------------------
echo           @****** Bem-Vindo ao JO-KEN-PO ******@
echo ------------------------------------------------------------------------
echo.
echo [1] PEDRA
echo [2] PAPEL
echo [3] TESOURA
echo [4] LAGARTO
echo [5] SPOCK
echo [E] ENCERRAR JOGO
echo [R] REGRAS
echo [Z] REINICIAR O JOGO
echo ==========================================================================
echo.
set /p op=Escolha uma opcao: 
echo.  

if %op% == %pc% (
   set /a contE=%contE% + 1
   goto:empate)
if %op% ==1 (goto:op1)
if %op% ==2 (goto:op2)
if %op% ==3 (goto:op3)
if %op% ==4 (goto:op4)
if %op% ==5 (goto:op5)
if /i %op% == r (goto:regras)
if /i %op% == e (goto:sair)
if /i %op% == z (goto:zerar)


:empate
if %pc% == 1 ( 
   echo %nome% escolheu: PEDRA!
   echo Computador escolheu: PEDRA!

   )
   if %pc% == 2 ( 
   echo %nome% escolheu: PAPEL!
   echo Computador escolheu: PAPEL!
   
   )
   if %pc% == 3 ( 
   echo %nome% escolheu: TESOURA!
   echo Computador escolheu: TESOURA!
   
   )
   if %pc% == 4 ( 
   echo %nome% escolheu: LAGARTO!
   echo Computador escolheu: LAGARTO!
   
   )
   if %pc% == 5 ( 
   echo %nome% escolheu: SPOCK!
   echo Computador escolheu: SPOCK!
   
   )
echo.
echo   *** OPAA... DEU EMPATE (o_o)/ !!! ***
echo.
echo =========== PLACAR DO JOGO ===========
echo    * VITORIAS: %contV%             
echo    * DERROTAS: %contD%              
echo    * EMPATES: %contE%               
echo ======================================
echo.
echo Pressione qualquer tecla para continuar . . .
pause > nul
goto:jogo



:op1

   echo %nome% escolheu: PEDRA!
   if %pc% == 2 ( 
   set /a contD=%contD% + 1
   echo Computador escolheu: PAPEL!
   goto:perde 
   )
   if %pc% == 3 ( 
   set /a contV=%contV% + 1
   echo Computador escolheu: TESOURA!
   goto:ganha
   )
   if %pc% == 4 (
   set /a contV=%contV% + 1   
   echo Computador escolheu: LAGARTO!
   goto:ganha 
   )
   if %pc% == 5 ( 
   set /a contD=%contD% + 1
   echo Computador escolheu: SPOCK!
   goto:perde
   )
   
   

:op2

   echo %nome% escolheu: PAPEL!
   if %pc% == 1 ( 
   set /a contV=%contV% + 1
   echo Computador escolheu: PEDRA!
   goto:ganha 
   )
   if %pc% == 3 ( 
   set /a contD=%contD% + 1
   echo Computador escolheu: TESOURA!
   goto:perde
   )
   if %pc% == 4 (
   set /a contD=%contD% + 1   
   echo Computador escolheu: LAGARTO!
   goto:perde 
   )
   if %pc% == 5 ( 
   set /a contV=%contV% + 1
   echo Computador escolheu: SPOCK!
   goto:ganha
   )
   
   
   
:op3

   echo %nome% escolheu: TESOURA!
   if %pc% == 2 ( 
   set /a contV=%contV% + 1
   echo Computador escolheu: PAPEL!
   goto:ganha 
   )
   if %pc% == 1 ( 
   set /a contD=%contD% + 1
   echo Computador escolheu: PEDRA!
   goto:perde
   )
   if %pc% == 4 (
   set /a contV=%contV% + 1   
   echo Computador escolheu: LAGARTO!
   goto:ganha 
   )
   if %pc% == 5 ( 
   set /a contD=%contD% + 1
   echo Computador escolheu: SPOCK!
   goto:perde
   )
   
   
   
:op4

   echo %nome% escolheu: LAGARTO!
   if %pc% == 2 ( 
   set /a contV=%contV% + 1
   echo Computador escolheu: PAPEL!
   goto:ganha 
   )
   if %pc% == 3 ( 
   set /a contD=%contD% + 1
   echo Computador escolheu: TESOURA!
   goto:perde
   )
   if %pc% == 1 (
   set /a contD=%contD% + 1   
   echo Computador escolheu: PEDRA!
   goto:perde 
   )
   if %pc% == 5 ( 
   set /a contV=%contV% + 1
   echo Computador escolheu: SPOCK!
   goto:ganha
   )
   
   
   
:op5

   echo %nome% escolheu: SPOCK!
   if %pc% == 2 ( 
   set /a contD=%contD% + 1
   echo Computador escolheu: PAPEL!
   goto:perde 
   )
   if %pc% == 3 ( 
   set /a contV=%contV% + 1
   echo Computador escolheu: TESOURA!
   goto:ganha
   )
   if %pc% == 4 (
   set /a contD=%contD% + 1   
   echo Computador escolheu: LAGARTO!
   goto:perde 
   )
   if %pc% == 5 ( 
   set /a contV=%contV% + 1
   echo Computador escolheu: PEDRA!
   goto:ganha
   )
   
   
   
:regras
cls
echo ========================== REGRAS DO JOGO ================================
echo.
echo   **PEDRA:
echo Empata com Pedra; Ganha de Tesoura e Lagarto; Perde de Papel e Spock...
echo.
echo   **PAPEL:
echo Empata com Papel; Ganha e Pedra e Spock; Perde de Tesoura e Lagarto...
echo.
echo   **TESOURA:
echo Empata com Tesoura; Ganha de Lagarto e Papel; Perde de Pedra e Spock...
echo.
echo   **LAGARTO:
echo Empata com Lagarto; Ganha de Papel e Spock; Perde de Pedra e Tesoura...
echo.
echo   **SPOCK:
echo Empata com Spock; Ganha de Pedra e Tesoura; Perde de Lagarto e Papel...
echo.
echo ==========================================================================
echo Pressione qualquer tecla para continuar. . .
pause > nul
goto:jogo



:perde
set /a contD=%contD%
echo.
echo   ** QUE PENA VOCE PERDEU =( ... TENTE NOVAMENTE !!! **
echo.
echo =========== PLACAR DO JOGO ===========
echo    * VITORIAS: %contV%             
echo    * DERROTAS: %contD%              
echo    * EMPATES: %contE%               
echo ======================================
echo.
echo Pressione qualquer tecla para continuar . . .
pause > nul
goto:jogo



:ganha
set /a contV=%contV%
echo.
echo  *** \(*o*)/ EBAAA !!! VOCE VENCEU PARABEENS \(OwO)/ !!! ***
echo.
echo =========== PLACAR DO JOGO ===========
echo    * VITORIAS: %contV%             
echo    * DERROTAS: %contD%              
echo    * EMPATES: %contE%               
echo ======================================
echo.
echo Pressione qualquer tecla para continuar . . .
pause > nul
goto:jogo


:sair
set /p sai= ** Ja vai embora ;-;? [S/N] 
if /i %sai% == n (goto:jogo) else (exit)

:zerar
set /p zera= ** Reiniciar o jogo (x_x)? [S/N] 
if /i %zera% == s (goto:inicio) else (goto:jogo)