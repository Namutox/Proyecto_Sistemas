#!/bin/bash


tutorial(){
    clearInf
    clearInp
    setFCInf 1 1

    printf "..."
    nlInfo
    printf "Por fin logro contactarte, no fue fácil."
    nlInfo
    printf "Eh estado siguiendo tu caso, sé de lo que eres capaz."
    nlInfo
    printf "Voy a ayudarte, solo debes seguir mis instrucciones y" 
    nlInfo
    printf "seras libre."

    loop1(){
        setFCInf 7 1
        printf "Escribe 'ping' para mostrar los puntos de conexión."
        setFCInp 1 1
        
         read cmd1
         clearInp
    
    case $cmd1 in
        ping) clearInf
            setFCInf 1 1
            printf "Muy bien, ahora deberías ver los puntos de conexión."
            asciiCompu 1 5 1
            ;;
        *) loop1
            ;;
    esac

    }

    loop1

    setFCInf 2 1
    printf "Para conectarte, escribe 'connect pc' y su numero."
    nlInfo
    printf "En este caso sería 'connect pc_1'."

    loop2(){
        setFCInp 1 1

        read cmd2
        clearInp

        case $cmd2 in
            "connect pc_1") 
                ;;
            *) loop2
                ;;
        esac
    }

    loop2

    clearInf
    clearMain

    asciiCarpeta 2 5
    setFCMain 1 7
    printf "Reg"
    setFCInf 1 1
    printf "Bien, lograste entrar."
    nlInfo
    printf "Tienes que borrar tus registros."
    nlInfo
    printf "Entra en la carpeta 'Reg' y elimina su contenido."
    nlInfo
    nlInfo
    printf "──────────────────────────────────────────────────"
    nlInfo
    printf "Escribe 'ayuda' si la necesitas."

    loop3(){
        setFCInp 1 1

        read cmd3
        clearInp

        case $cmd3 in
            "cd Reg")
                ;;
            ayuda) setFCInf 9 1
                printf "Para entrar en 'Reg', escribe 'cd Reg'."
                loop3
            ;;
            *) loop3
                ;;
        esac
    }


    loop3

    clearMain
    clearInf

    asciiCarpeta 2 5
    setFCMain 1 7
    printf "SP_1"
    setFCInf 1 1
    printf "Elimina la carpeta llamada 'SP_1'."
    nlInfo
    printf "Recuerda utilizar 'rm' para eliminar."

    loop4(){
        setFCInp 1 1

            read cmd4
            clearInp

            case $cmd4 in
                "rm SP_1")
                    ;;
                *) loop4
                    ;;
            esac
        }
    
    loop4

    clearInf
    clearMain

    setFCInf 1 1
    printf "Perfecto, ya no tienen tus registros."
    nlInfo
    printf "Ahora desconectate y habremos terminado."
    nlInfo
    printf "Recuerda que puedes escribir 'ayuda'."
    
    loop5 (){
        setFCInp 1 1

        read cmd3
        clearInp

        case $cmd3 in
            "disconnect")
                ;;
            ayuda) setFCInf 5 1
                printf "Para desconectarte escribe 'disconnect'."
                loop5
            ;;
            *) loop5
                ;;
        esac
    }

    loop5

    #Fin tutorial / entrega día 8, editar esto una vez entregado para seguir con el juego.
    clear
    echo "Hasta acá llega el tutorial."
    echo "Los siguientes niveles los iremos agregando para la entrega final."
    echo "Gracias por jugar."
    printf "\n"
    printf "\n"
    printf "\n"
    echo "Hecho por: S. Alvez, F. Del Castillo y L. Vera."
    printf "\n"
    printf "\n"
    read -p "Presiona cualquier tecla para salir." salir
    exit
}