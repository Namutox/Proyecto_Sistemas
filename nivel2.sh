#!/bin/bash

# Funciones case
ping2(){
    clearMain
    clearInf
    
    setFCInf 1 1
    printf "Recuerda usar 'connect' y numero de pc."

    asciiCompu 1 5 1
}

pc(){
    clearMain
    clearInf

    asciiCarpeta 2 5
    setFCMain 1 7
    printf "System"
    asciiCarpeta 2 25
    setFCMain 1 27
    printf "Img"
}

#-------------------------------------------------------------------------------------

# Nivel 2
nivel2(){
    clearInf
    clearMain
    clearInp

    setFCInf 1 1
    printf "..."
    nlInfo
    sleep 0.5
    printf "....."
    nlInfo
    printf "Bien, has logrado borrar tus datos, pero aun quedan" 
    nlInfo
    printf "rastros de tus acciones."
    nlInfo
    nlInfo
    printf "Utiliza el comando 'ping' para ver las conexiones."

    loop2-1(){
        setFCInp 1 1
        
        read cmd1
        clearInp
    
        case $cmd1 in
            ping) 
                ping2
                ;;
            *) loop2-1
                ;;
        esac
    }
    loop2-1

    loop2-2(){
        setFCInp 1 1

        read cmd2
        clearInp

        case $cmd2 in
            "connect pc_1")
                pc
                ;;
            *)
                loop2-2
                ;;
        esac
    }
    loop2-2

    setFCInf 1 1
    printf "Debes eliminar los rastros de tu presencia."
    nlInfo
    printf "Busca archivos ocultos utilizando 'ls -a'."

    loop2-3(){
        setFCInp 1 1

        read cmd3
        clearInp
        case $cmd3 in
            "ls -a")
                clearInf
                setFCInf 1 1
                printf "Has encontrado un archivo de historial. Elimínalo."

                asciiCarpeta 13 5
                setFCMain 12 7
                printf ".history"
                ;;
            *)
                loop2-3
                ;;
        esac
    }
    loop2-3

    setFCInf 3 1
    printf "Elimina el archivo '.history'."
    nlInfo
    printf "Utiliza el comando 'rm'."

    loop2-4(){
        setFCInp 1 1

        read cmd4
        clearInp

        case $cmd4 in
            "rm .history")
                clearMain
                asciiCarpeta 2 5
                setFCMain 1 7
                printf "System"
                asciiCarpeta 2 25
                setFCMain 1 27
                printf "Img"
                asciiFloppy 2 45
                setFCMain 1 47
                printf "log.txt"
                ;;
            *)
                loop2-4
                ;;
        esac
    }
    loop2-4
     
    clearInf
    setFCInf 1 1
    printf "Perfecto. Ahora verifica que no queden registros"
    nlInfo
    printf "en 'log.txt'."

    loop2-5(){
        setFCInf 4 1
        printf "Elimina el archivo 'log.txt' si existe."
        nlInfo
        printf "Utiliza el comando 'rm'."

        setFCInp 1 1

        read cmd5
        clearInp

        case $cmd5 in
            "rm log.txt")
                clearMain
                asciiCarpeta 2 5
                setFCMain 1 7
                printf "System"
                asciiCarpeta 2 25
                setFCMain 1 27
                printf "Img"
                ;;
            *)
                loop2-5
                ;;
        esac
    }
    loop2-5

    clearInf
    setFCInf 1 1
    printf "Has eliminado los rastros, pero no terminaste aún..."
    nlInfo
    printf "Preparate para el proximo paso, el nivel 3 te espera."
    nlInfo
    printf "Escribe 'continuar' para proceder al siguiente nivel."

    loop2-6(){
        setFCInp 1 1

        read cmd6
        clearInp

        case $cmd6 in
            "continuar")
                ;;
            *)
                loop2-6
                ;;
        esac
    }
    loop2-6
}