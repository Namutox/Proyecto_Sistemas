#!/bin/bash

#Funciones case
ping(){
    clearInf
    asciiCompu 10 25 0
}

connectPC0(){
    clearMain
    clearInf

    setFCInf 1 1
    printf "Recuerda usar 'cd' para acceder a carpetas."

    asciiCarpeta 2 5
    setFCMain 1 7
    printf "Logs"
    asciiCarpeta 2 25
    setFCMain 1 27
    printf "Reg"
    asciiCarpeta 2 45
    setFCMain 1 47
    printf "Usr"
    asciiCarpeta 13 5
    setFCMain 12 7
    printf "Etc"
    asciiCarpeta 13 25
    setFCMain 12 27
    printf "Logs"
}

#-------------------------------------------------------------------------------------   

#Nivel
nivel3(){
    clearInf
    clearMain
    clearInp

    setFCInf 1 1
    printf "..."
    nlInfo
    sleep 0.5
    printf "....."
    nlInfo
    printf "Fue un trabajo duro, solo queda el final."
    nlInfo
    printf "Utiliza el comando 'ping' para ver los accesos."

    loop3-1(){
        setFCInp 1 1
        
        read cmd1
        clearInp
    
        case $cmd1 in
            ping) ping
                ;;
            *) loop3-1
                ;;
        esac
    }
    loop3-1

    setFCInf 1 1
    printf "Tendras que entrar y eliminar todo."
    nlInfo
    printf "Asegurate de borrar toda carpeta existente."
    setFCInf 5 1
    printf "Recuerda que puedes escribir 'ayuda'."

    loop3-2(){
        setFCInp 1 1
        
        read cmd2
        clearInp
    
        case $cmd2 in
            "connect pc_0") 
                connectPC0
                ;;
            ayuda)
                setFCInf 6 1
                printf "Entra en la computadora utilizando:"
                nlInfo
                printf "connect pc_'numero de la pc'."
                loop3-2
                ;;
            *)
                loop3-2
                ;;
        esac
    }
    loop3-2

    clearInf
    setFCInf 1 1
    printf "Guarda una copia de todo esto."
    nlInfo
    printf "Usa nuestro servidor personal."

    loop3-3(){
        setFCInp 1 1
        
        read cmd3
        clearInp
    
        case $cmd3 in
            "add .") 
                loop3-4(){
                    setFCInp 1 1
        
                    read cmd4
                    clearInp
    
                    case $cmd4 in
                        "push server_personal")
                            ;;
                        *)
                            loop3-4
                            ;;
                    esac
                }
                loop3-4
                ;;
            ayuda)
                setFCInf 5 1
                printf "Selecciona los archivos utilizando:"
                nlInfo
                printf "'add .'"
                nlInfo
                printf "Luego subelos utilizando:"
                nlInfo
                printf "'push server_personal'"
                loop3-3
                ;;
            *)
                loop3-3
                ;;
        esac
    }
    loop3-3

    clearInf
    setFCInf 1 1
    printf "Muy bien, ya tenemos los datos."
    nlInfo
    printf "Ahora debes eliminar todo y desconectarte."

    loop3-5(){
        setFCInp 1 1
        
        read cmd5
        clearInp
    
        case $cmd5 in
            "rm .")
                clearMain
                clearInf
                ;;
            ayuda)
                setFCInf 5 1
                printf "Utiliza 'rm' y '.' para seleccionar todo."
                ;;
            *)
                loop3-5
                ;;
        esac
    }
    loop3-5

    setFCInf 1 1
    printf "Ahora desconectate y será el fin."

    loop3-6(){
        setFCInp 1 1
        
        read cmd6
        clearInp
    
        case $cmd6 in
            disconnect)
                clearInf
                clearMain
                ;;
            *)
                loop3-6
                ;;
        esac
    }
    loop3-6
}