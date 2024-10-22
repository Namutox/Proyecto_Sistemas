#!/bin/bash

#Funciones case
ping(){
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

    asciiCarpeta 2 5
    setFCMain 1 7
    printf "System"
    asciiCarpeta 2 25
    setFCMain 1 27
    printf "Usr"
}

logs(){
    clear
}

reg(){
    clear
}

img(){
    clear
}

old(){
    clear
}

baseDatos(){
    clear
}

etc(){
    clear
}

system(){
    clear
}

usr(){
    clear
}

disconnect(){
    clearMain
    ping
    loop1-2
}

cd(){
    clear
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
            ping) ping
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