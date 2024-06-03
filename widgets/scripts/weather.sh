#!/bin/bash

# Comando a ejecutar
command="inxi -w -xx | awk '/temperature/ {print \$3, \$4} /conditions/ {print \$8, \$9}'"

# Ejecutar el comando y mostrar la salida por pantalla
eval $command
