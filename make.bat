@echo off
title Monster XeLaTeX Template
:start
cls
echo ��ӭʹ�� XeLaTeX ѧλ����ģ�壬��ָʾ������Ҫ~
echo ----------------
echo 0. ���������ļ�
echo 1. ���� main
echo 2. �˳�
echo ----------------
set /p num="����������ѡ��: "
if "%num%"=="1" goto main
if "%num%"=="2" goto exit
if "%num%"=="0" goto clean
echo �����ѡ��
pause
goto start

:main
cls
call "clean.bat"
xelatex main
bibtex main
xelatex main
xelatex main
main.pdf
echo work down!
pause
goto start

:clean
call "clean.bat"
echo work down!
pause
goto start

:exit
exit