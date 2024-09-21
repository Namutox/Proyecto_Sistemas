#!/bin/bash


#Funcion para poner el cursor en el area Info.
setFCInf(){
    tput cup $1 $2
}

#Funcion para poner el cursor en el area Input.
setFCInp(){
    tput cup $((inicioFilInput + $1)) $((inicioColInput + $2))
}

#Funcion para poner el cursor en el area Main.
setFCMain(){
    tput cup $((inicioFilMain + $1)) $((inicioColMain + $2))
}

#Funcion para hacer más rápido el salto de linea al usar "printf". (ESTO ES MEDIO VIEJO, LO VOY A BORRAR CUANDO NO ME DE PAJA MODIFICAR EL LOGO).
nl(){
    printf "\n"
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
    setFCInp 2 1
    printf "Comandos:"
}

#Funcion para cambiar el color de fondo de los caracteres (FUNCIONA PERO ES DE PRUEBA).
colorFondo(){
    printf "\033[48;5;$1m"
}
