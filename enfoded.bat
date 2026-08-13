@echo off

::crear carpeta

mkdir bin
mkdir lib

::crear archivos vacios
type nul > bin\main.dart
type nul > lib\contanct.dart
type nul > .gitignore
type nul > README.md

echo Estructura creada con exito
pause

