#!/bin/bash

#Funciones case
ping1(){
    clearInf
    setFCInf 1 1
    printf "Busca la base de datos."
    nlInfo
    printf "Recuerda que puedes escribir 'ayuda'."

    asciiCompu 1 5 1
    asciiCompu 1 25 2
    asciiCompu 10 5 3
    asciiCompu 10 25 4
}

connectPC1(){
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
}

connectPC2(){
    clearMain
    clearInf
    
    setFCInf 1 1
    printf "Recuerda usar 'cd' para acceder a carpetas."

    asciiCarpeta 2 5
    setFCMain 1 7
    printf "Img"
    asciiCarpeta 2 25
    setFCMain 1 27
    printf "Old"
}

connectPC3(){
    clearMain
    clearInf
    
    setFCInf 1 1
    printf "Recuerda usar 'cd' para acceder a carpetas."

    asciiCarpeta 2 5
    setFCMain 1 7
    printf "Base_Datos"
    asciiCarpeta 2 25
    setFCMain 1 27
    printf "Etc"
}

connectPC4(){
    clearMain
    clearInf
    
    setFCInf 1 1
    printf "Recuerda usar 'cd' para acceder a carpetas."

    asciiCarpeta 2 5
    setFCMain 1 7
    printf "System"
    asciiCarpeta 2 25
    setFCMain 1 27
    printf "Usr"
}

DirIrr(){
    clearMain
    setFCMain 2 2
    printf "Solo ves archivos irrelevantes, desconectate y busca la base de datos."
    loop1-Dir(){
        setFCInp 1 1
        read cmdDir
        clearInp

        case $cmdDir in
            disconnect)
                clearMain
                disconnect
                ;;
            *)
                loop1-Dir
                ;;
        esac
    }
    loop1-Dir
}

logs(){
    DirIrr
}

reg(){
    DirIrr
}

img(){
    DirIrr
}

old(){
    DirIrr
}

baseDatos(){
    clearMain
    clearInf
    setFCInf 1 1
    printf "Lo encontraste, aquí estan los archivos."
    nlInfo
    printf "Denes eliminar 'Buscados' para ser libre."
    setFCInf 5 1
    printf "Recuerda que puedes usar el comando 'ayuda'."
    
    asciiFloppy 2 5
    setFCMain 1 5
    printf "Sospechosos"
    asciiFloppy 2 25
    setFCMain 1 26
    printf "Buscados"

    loop1-Finn(){
        setFCInp 1 1
        read cmdFinn
        clearInp

        case $cmdFinn in
            "rm Buscados")
                clearMain
                clearInf
                asciiFloppy 2 5
                setFCMain 1 5
                printf "Sospechosos"
                
                setFCInf 1 1
                printf "Muy bien, lo lograste."
                nlInfo
                printf "Ahora simplemente desconectate y habremos terminado."

                loop1-Fin(){
                    setFCInp 1 1
                    read cmdFin
                    clearInp

                    case $cmdFin in
                        disconnect)
                            clearInf
                            clearMain
                            ;;
                        *)
                            loop1-Fin
                            ;;
                    esac
                }
                loop1-Fin
                ;;
            ayuda)
                setFCInf 9 1
                printf "Para eliminar, escribe 'rm' y el nombre."
                loop1-Finn
                ;;
            *)
                loop1-Finn
                ;;
        esac
    }
    loop1-Finn
}

etc(){
    DirIrr
}

system(){
    DirIrr
}

usr(){
    DirIrr
}

disconnect(){
    clearMain
    ping1
    loop1-2
}

ayuda1(){
    setFCInf 5 1
    printf "Entra en las diferentes computadoras utilizando:"
    nlInfo
    printf "connect pc_'numero de la pc'."
    nlInfo
    printf "Por ejemplo: 'connect pc_1'."
    loop1-2
}

#-------------------------------------------------------------------------------------   

#Nivel
nivel1(){
    clearInf
    clearMain
    clearInp

    setFCInf 1 1
    printf "..."
    nlInfo
    sleep 0.5
    printf "....."
    nlInfo
    printf "Parece que tus datos siguen en el registro."
    nlInfo
    printf "Utiliza el comando 'ping' para ver las conexiones."

    loop1-1(){
        setFCInp 1 1
        
        read cmd1
        clearInp
    
        case $cmd1 in
            ping) ping1
                ;;
            *) loop1-1
                ;;
        esac
    }
    loop1-1
    
    loop1-2(){
        setFCInp 1 1

        read cmd2
        clearInp

        case $cmd2 in
            "connect pc_1")
                connectPC1

                loop1-3-pc1(){
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
                            loop1-3-pc1
                    esac
                }
                loop1-3-pc1
                ;;
            "connect pc_2")
                connectPC2

                loop1-3-pc2(){
                    setFCInp 1 1

                    read cmd3
                    clearInp

                    case $cmd3 in
                        "cd Img")
                            img
                            ;;
                        "cd Old")
                            old
                            ;;
                        "disconnect")
                            disconnect
                            ;;
                        *)
                            loop1-3-pc2
                    esac
                }
                loop1-3-pc2
                ;;
            "connect pc_3")
                connectPC3

                loop1-3-pc3(){
                    setFCInp 1 1

                    read cmd3
                    clearInp

                    case $cmd3 in
                        "cd Base_Datos")
                            baseDatos
                            ;;
                        "cd Etc")
                            etc
                            ;;
                        "disconnect")
                            disconnect
                            ;;
                        *)
                            loop1-3-pc3
                    esac
                }
                loop1-3-pc3
                ;;
            "connect pc_4")
                connectPC4

                loop1-3-pc4(){
                    setFCInp 1 1

                    read cmd3
                    clearInp

                    case $cmd3 in
                        "cd System")
                            system
                            ;;
                        "cd Usr")
                            usr
                            ;;
                        "disconnect")
                            disconnect
                            ;;
                        *)
                            loop1-3-pc4
                    esac
                }
                loop1-3-pc4
                ;;
            ayuda)
                ayuda1
                ;;
            *) loop1-2
                ;;
        esac
    }
    loop1-2
}