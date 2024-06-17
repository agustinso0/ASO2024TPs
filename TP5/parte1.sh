random=$((1 + $RANDOM % 100))
contador=10
echo ${random}
echo "Bienvenido al juego de adivinar un numero aleatorio"
while true;
do
    echo "Por favor, ingrese su numero. Tienes ${contador} intentos restantes!"
    read num
    if (( num > 100 || num < 1)); then
        echo "Has ingresado un numero invalido, recuerda que debe ser mayor a 0 y menor igual a 100"
        continue # Como se utiliza la condicion true en el while, al utilizar el statement continue se logra comprobar que el numero ingresado sea valido
    fi
    contador=$(( ${contador} - 1 ))
    if (( num > random )); then
        echo "Estas ingresando un numero mayor!"
    elif (( num < random )); then
        echo "Estas ingresando un numero menor!"
    else
        echo "Has adivinado el numero ${random} con ${contador} intentos restantes"
        break
    fi
done