while true; do
read -p "Ingrese el primer numero: " num1
read -p "Ingrese el segundo numero: " num2
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicacion"
echo "4. Division"
echo "5. Salir"
read -p "Ingrese la operacion a llevar a cabo: " opcion
case $opcion in 
    1)
    #Suma
    resultado=$(echo "$num1 + $num2" | bc)
    echo "Resultado: $resultado"
    ;;
    2)
    #Resta
    resultado=$(echo "$num1 - $num2" | bc)
    echo "Resultado: $resultado"
    ;;
    3)
    #Multiplicacion
    resultado=$(echo "$num1 * $num2" | bc)
    echo "Resultado: $resultado"
    ;;
    4)
    #Division
    if ["$num2" -ne 0]; then
        resultado=$(echo "$num1 / $num2" | bc)
        echo "Resultado: $resultado"
    else
        echo "Division por 0 no permitida."
    fi
    ;;
    5)
    echo "Saliendo del programa..."
    exit 0
    ;;
    *)
    echo "Opcion no valida, intentelo nuevamente"
    ;;

    esac
    echo ""

done