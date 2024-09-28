#!/bin/bash


#Funcion para poner el cursor en el area Info.
setFCInf(){
    tput cup $1 $2
}

#Funcion para poner el cursor en el area Input.
setFCInp(){
    tput cup $(((inicioFilInput + 1) + $1)) $(((inicioColInput + 10) + $2))
}

#Funcion para poner el cursor en el area Main.
setFCMain(){
    tput cup $((inicioFilMain + $1)) $((inicioColMain + $2))
}

#Funcion que limpia el area de informacion.
clearInf(){
    for ((i=1; i<limiteFilInfo - 1; i++)); do
        tput cup $i 1
        for ((h=1; h<limiteColInfo; h++)); do
            printf " "
        done
    done
}

#Funcion que limpia el area de input.
clearInp(){
    for ((i=inicioFilInput + 1; i<filas - 1; i++)); do
        tput cup $i $(($inicioColInput + 1))
        for ((h=inicioColInput + 1; h<columnas - 1; h++)); do
            printf " "
        done
    done
    tput cup $((inicioFilInput + 2)) $((inicioColInput + 1))
    printf "Comandos:"
}

nlInfo(){
    printf "\033[1E"
    printf "\033[1C"
}

nlMain(){
    printf "\033[1E"
    printf "\033[$((inicioColMain + 1))C"
}

#Funcion para cambiar el color de fondo de los caracteres (FUNCIONA PERO ES DE PRUEBA).
colorFondo(){
    printf "\033[48;5;$1m"
}
