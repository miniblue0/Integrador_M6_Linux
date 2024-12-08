#!/bin/bash

#funcion para armar el recordatorio
programar_recordatorio() {
    echo "ingrese el mensaje del recordatorio: "
    read mensaje
    echo "ingrese el tiempo de espera en segundos: "
    read tiempo

    #verifico que el tiempo sea correcto
    if ! [[ "$tiempo" =~ ^[0-9]+$ ]] || [ "$tiempo" -le 0 ]; then
        echo "** error, ingrese un numero valido para la hora **"
        return
    fi

    echo "** el recordatorio programado en $tiempo segundos **"
    sleep $tiempo

  
    ispeak -v es "$mensaje" #uso ispeak para reproducir el mensaje
    echo
    echo "** recordatorio finalizado, el mensaje es: \"$mensaje\ **""
}

while true; do  #while para hacer los recordatorios necesarios
    programar_recordatorio
    echo
    echo " ¿programar otro recordatorio? (s/n)"
    read continuar

    if [[ "$continuar" =~ ^[Nn]$ ]]; then
        echo "** cerrando herramienta de recordatorios **"
        exit 0
    fi
done
