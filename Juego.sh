#!/bin/bash


#"Importa" los archivos con funciones practicas (Para no llenar este archivo con funciones y hacerlo mas facil de leer).
source ./Herramientas.sh
source ./Funciones.sh
source ./Niveles.sh
source ./Ascii.sh
source ./Nivel1.sh

#Estas dos lineas de código ocultan el cursor en la consola y borran el nombre por defecto al escribir.
printf "\033[?25l"
PS0=
PS1=
PS3=": "


#Acá inician los comandos que se muestran en la pantalla.
#inicio
hud
logo

setFCInf 1 1
printf "Bienvenido a NOMBRE JUEGO"
setFCInf 2 1
printf "1- Jugar"
setFCInf 3 1
#printf "2- Info"
setFCInf 4 1
printf "3- Salir"
nlInfo
printf "\033[0m"

setFCInp 1 1
read comando
clearInp

case $comando in
    1) setFCMain 1 1
        #tutorial
        nivel1
        ;;
    2) setFCMain 1 1
        printf "Juego hecho por: "
        ;;
    3) clear
        exit
        ;;
    *) #clear
        setFCMain 1 1
        printf "Opcion incorrecta"
        nlMain
        printf "TEST"
        exit
        ;;
esac


#Comandos para volver a la normalidad los formatos usados (Colores, ocultar el cursor, etc).
printf "\033[0m"
printf "\033[?25h"
