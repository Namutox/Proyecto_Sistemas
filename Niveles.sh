!/bin/bash


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
    printf "En este caso sería 'connect pc 1'."
}
