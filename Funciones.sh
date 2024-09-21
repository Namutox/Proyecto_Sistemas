#!/bin/bash


# Obtener el tamaño de la terminal
filas=$(tput lines)
columnas=$(tput cols)

#Funcion que imprime el logo en el centro de la consola. (CODIGO VIEJO, LO TENGO QUE ACTUALIZAR PERO TENGO PAJA AÚN).
logo(){
    local a=$((columnas/2 + 5))
    tput cup 0 $a
    printf "\033[1m"
    printf "╔════════════════════╗"
    nl
    tput cup 1 $a
    printf "║                    ║"
    nl
    tput cup 2 $a
    printf "║\033[32m       Hack_OS\033[1m      ║"
    nl
    tput cup 3 $a
    printf "║                    ║"
    nl
    tput cup 4 $a
    printf "╚════════════════════╝"
    nl
    printf "\033[0m"
}

#Funcion que muestra la animacion de inicio del juego. (TENGO QUE ACTUALIZAR EL TEMITA DE COLORES PARA QUE SEA IGUAL QUE EL RESTO).
inicio(){
    clear
    tput setaf 1
    echo "Iniciando..."
    for i in {1..100}; do   #Simula una pantalla de carga (de 0% a 100%).
        tput cup 1 0
        echo -n "$i%"
        sleep 0.02
    done
    sleep 0.5
    tput setaf 2
    printf "\nTodo listo."
    sleep 0.5
    clear
    tput sgr0
}

#Crea el area Info en la consola.
areaInfo(){
    limiteColInfo=$((columnas / 3))
    limiteFilInfo=$filas

    #Color de caracteres.
    printf "\033[38;5;82m"

    # Lineas horizontales.
    for ((i=1; i<limiteColInfo; i++)); do
        tput cup 0 $i
        printf "─"
        tput cup $limiteFilInfo $i
        printf "─"
    done

    # Lienas verticales.
    for ((i=1; i<limiteFilInfo; i++)); do
        tput cup $i 0
        printf "│"
        tput cup $i $limiteColInfo
        printf "│"
    done

    tput cup 0 0
    printf "┌"
    tput cup $limiteFilInfo 0
    printf "└"
    tput cup 0 $limiteColInfo
    printf "┐"
    tput cup $limiteFilInfo $limiteColInfo
    printf "┘"

    printf "\033[0m"
}

#Crea el color de fondo de Info. (FUNCIONA PERO ES SOLO DE PRUEBA, SE VE MEDIO FEO).
fondoInfo(){
    for ((i=1; i<limiteFilInfo - 1; i++)); do
        tput cup $i 1
        for ((h=1; h<limiteColInfo; h++)); do
            printf " "
        done
    done
    printf "\033[0m"
}

#Crea el area Input en la consola.
areaInput(){
    inicioColInput=$((limiteColInfo + 1))
    inicioFilInput=$((filas - 5))

    #Color de marco.
    printf "\033[38;5;171m"

    # Lienas verticales.
    for ((i=$inicioFilInput; i<filas; i++)); do
        tput cup $i $inicioColInput
        printf "│"
        tput cup $i $columnas
        printf "│"
    done

    # Lineas horizontales.
    for ((i=inicioColInput; i<columnas; i++)); do
        tput cup $inicioFilInput $i
        printf "─"
        tput cup $filas $i
        printf "─"
    done

    tput cup $inicioFilInput $inicioColInput
    printf "┌"
    tput cup $filas $inicioColInput
    printf "└"
    tput cup $inicioFilInput $columnas
    printf "┐"
    tput cup $filas $columnas
    printf "┘"

    printf "\033[0m"
    setFCInp 2 1
    printf "Comandos:"
}

#Crea el area Main en la consola.
areaMain(){
    inicioColMain=$((limiteColInfo + 1))
    inicioFilMain=$((filas / 6))
    limiteColMain=$columnas
    limiteFilMain=$((inicioFilInput - 1))

    for ((i=inicioColMain; i<limiteColMain; i++)); do
        tput cup $inicioFilMain $i
        printf "─"
        tput cup $limiteFilMain $i
        printf "─"
    done

    for ((i=inicioFilMain; i<limiteFilMain; i++)); do
        tput cup $i $inicioColMain
        printf "│"
        tput cup $i $limiteColMain
        printf "│"
    done

    tput cup $inicioFilMain $inicioColMain
    printf "┌"
    tput cup $limiteFilMain $inicioColMain
    printf "└"
    tput cup $inicioFilMain $limiteColMain
    printf "┐"
    tput cup $limiteFilMain $limiteColMain
    printf "┘"
}

#Funcion que llama a los metodos mencionados para crear el "HUD" del juego. ("HUD" es el nombre que tienen los marcos y todo eso en los juegos).
hud(){
    areaInfo
    areaInput
    areaMain
}
