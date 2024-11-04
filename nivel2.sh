#!/bin/bash

# Funciones case
ping(){
    clearInf
    setFCInf 1 1
    printf "Busca la base de datos."
    nlInfo
    printf "Recuerda que puedes escribir 'ayuda'."

    # Mostrar posibles conexiones
    asciiCompu 1 5 1
    asciiCompu 1 25 2
    asciiCompu 10 5 3
    asciiCompu 10 25 4
}

connectPC1(){
    clearMain
    clearInf

    # Mostrar carpetas del PC_1
    asciiCarpeta 2 5
    setFCMain 1 7
    printf "Logs"
    asciiCarpeta 2 25
    setFCMain 1 27
    printf "Reg"
}

# Función de ayuda específica para nivel 2
ayuda2(){
    setFCInf 5 1
    printf "Para encontrar archivos ocultos, escribe 'ls -a'."
    loop2-4
}

# Nivel 2
nivel2(){
    clearInf
    clearMain
    clearInp

    # Mensaje inicial del nivel 2
    setFCInf 1 1
    printf "..."
    nlInfo
    sleep 0.5
    printf "....."
    nlInfo
    printf "Bieen has logrado borrar tus datos, pero aun quedan rastros de tus acciones."
    nlInfo
    printf "Utiliza el comando 'ping' para ver las conexiones."

    # Esperar a que el jugador escriba 'ping'
    loop2-1(){
        setFCInp 1 1
        
        read cmd1
        clearInp
    
        case $cmd1 in
            ping) ping
                ;;
            *) loop2-1
                ;;
        esac
    }
    loop2-1
    
    # Esperar a que el jugador se conecte a una PC específica
    loop2-2(){
        setFCInp 1 1

        read cmd2
        clearInp

        case $cmd2 in
            "connect pc_1")
                connectPC1

                # Dentro del PC_1, ejecutar comandos específicos
                loop2-3-pc1(){
                    setFCInp 1 1

                    read cmd3
                    clearInp

                    case $cmd3 in
                        "cd Logs")
                            logs
                            ;;
                        "cd Reg")
                            reg
                            ;;
                        "disconnect")
                            disconnect
                            ;;
                        *)
                            loop2-3-pc1
                    esac
                }
                loop2-3-pc1
                ;;
            ayuda)
                ayuda2
                ;;
            *) loop2-2
                ;;
        esac
    }
    loop2-2

    # Borrar rastros de la actividad
    setFCInf 1 1
    printf "Debes eliminar los rastros de tu presencia."
    nlInfo
    printf "Busca archivos ocultos utilizando 'ls -a'."

    # Esperar a que el jugador liste archivos ocultos
    loop2-4(){
        setFCInp 1 1

        read cmd4
        clearInp

        case $cmd4 in
            "ls -a")
                clearInf
                setFCInf 1 1
                printf "Has encontrado un archivo de historial. Elimínalo."
                asciiCompu 1 5 1
                ;;
            ayuda)
                ayuda2
                ;;
            *) loop2-4
                ;;
        esac
    }

    loop2-4

    # Eliminar archivo de historial
    setFCInf 1 1
    printf "Elimina el archivo '.history'."
    nlInfo
    printf "Utiliza el comando 'rm .history'."

    loop2-5(){
        setFCInp 1 1

        read cmd5
        clearInp

        case $cmd5 in
            "rm .history")
                clearInf
                setFCInf 1 1
                printf "Perfecto. Ahora verifica que no queden registros en 'log.txt'."
                asciiCompu 1 5 1
                ;;
            ayuda)
                setFCInf 5 1
                printf "Para eliminar el archivo, escribe 'rm .history'."
                loop2-5
                ;;
            *) loop2-5
                ;;
        esac
    }

    loop2-5

    # Eliminar archivo de registro
    setFCInf 1 1
    printf "Elimina el archivo 'log.txt' si existe."
    nlInfo
    printf "Utiliza el comando 'rm log.txt'."

    loop2-6(){
        setFCInp 1 1

        read cmd6
        clearInp

        case $cmd6 in
            "rm log.txt")
                clearInf
                setFCInf 1 1
                printf "Perfecto! lo logramos Has borrado todos los rastros."
                ;;
            ayuda)
                setFCInf 5 1
                printf "Para eliminar el archivo, escribe 'rm log.txt'."
                loop2-6
                ;;
            *) loop2-6
                ;;
        esac
    }

    loop2-6

    #Deja el final abierto para dar paso al nivel 3
    setFCInf 1 1
    printf "Has eliminado todos los rastros, pero no terminaste todavia..."
    nlInfo
    printf "Preparate para el proximo paso para terminar, tu escape, el nivel 3 te espera"
    nlInfo
    printf "Escribe 'continuar' para proceder al siguiente nivel."

    loop2-7(){
        setFCInp 1 1

        read cmd7
        clearInp

        case $cmd7 in
            "continuar")
            clearInf
            clearMain
            printf "Nivel 2 completo Preparate para escapar en el nivel 3!"
            ;;
        ayuda)
            setFCInf 5 1
    }    