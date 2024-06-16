#!/bin/bash

while true; do
    echo "Aplicación de la edad, Marcos Borri y Lucianos Ramos Cavero"
    read -p "¿Desea ingresar un nombre? [1]Sí [2]No: " opcion
    case $opcion in
        1)
            read -p "Ingrese un nombre: " nombre

            # Consulta la API de Agify para obtener la edad probable del nombre
            api=$(curl -s "https://api.agify.io/?name=$nombre")

            # Extrae la edad de la respuesta JSON usando jq
            edad=$(echo $api | jq -r '.age')

            if [ "$edad" != "null" ]; then
                echo "La edad promedio para el nombre $nombre es: $edad"
            else
                echo "No se encontró información para el nombre $nombre"
            fi
            ;;
        2)
            echo "Saliendo del programa..."
            exit 0
            ;;
        *)
            echo "Opción no válida, intente nuevamente"
            ;;
    esac
    echo ""
done