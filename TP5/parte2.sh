echo "Ingrese su nombre"
read nombre
response=$(curl --silent --location --request GET "https://api.agify.io/?name=${nombre}")
age=$(echo $response | grep -o '"age":[0-9]*' | cut -d':' -f2)
echo "Tu nombre es ${nombre} y su edad probable es ${age}"