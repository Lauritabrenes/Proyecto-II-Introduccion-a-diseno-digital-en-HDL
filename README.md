# Proyecto II: Implementacion a diseño digital en HDL


#### Instituto Tecnológico de Costa Rica
#### EL 3307: Diseño Lógico
#### Grupo 20
#### Profesor: Ing. Kaleb Alfaro Badilla

#### Integrantes:
1. Montenegro Goméz Samuel
2. Brenes Espinoza Laura Elena
3. Suarez Sarmiento Javier
4. Moya Vargas Austin Joan

#### I Semestre 2023


## Descripción general


### Introducción
La demanda del mercado actual en la microelectrónica exige diseños digitales altamente complejos, que
para implementarlos se requiere de ayuda asistida por computadora. Las herramientas EDA aumentan la
productividad de los ingenieros al abstraer detalles de la implementación de los sistemas digitales por medio
de un lenguaje de descripción de hardware (HDL) más natural para describir funcionalidades y comportamientos.
Los lenguajes HDL se utilizan para la síntesis de diseños digitales para ser fabricados en silicio o en
FPGA. Las FPGAs, son circuitos integrados reconfigurables que de acuerdo su programación implementan
una especificación funcional a partir de un código HDL. En este proyecto no es mandatorio realizar
la demostración funcional en hardware sino con solo demostrar que el diseño es funcional en
simulación.


### Objetivo general
Introducir al estudiante al desarrollo de un sistema digital utilizando lenguajes de descripción de hardware.


### Objetivos específicos
  a. Elaborar una implementación de un diseño digital en una FPGA.
  b. Construir un testbench básico para validar las especificaciones del diseño.
  c. Implementar el algoritmo conversión binario a BCD.
  d. Coordinación de trabajo en equipo mediante el uso de herramientas de control de versiones.
  f. Practicar planificación de tareas para trabajo de grupo.
  
  
### Especificación del diseño
Se solicita el desarrollo de un sistema en FPGA para explorar el uso de periféricos de la Nexys4/Basys3
como el display de siete segmentos y los switches. Es mandatorio leer los respectivos apartados del manual
de la tarjeta de desarrollo, ver[2, 3, 1, 5, 4]. El desarrollo del proyecto deberá construirse según las pautas
fundamentales de diseño digital sincrónico. El circuito constará de al menos los siguientes tres subsistemas:
  a. Subsistema de lectura y sincronización.
  b. Subsistema de cálculo de código BCD.
  c. Subsistema de decodificado en display de 7 segmentos.



![image](https://user-images.githubusercontent.com/111261878/231011781-1702b5aa-efe6-42cb-82ec-238074bc9db8.png)




## Pruebas










## Modulos

### Diagrama general
![image](https://user-images.githubusercontent.com/111307104/233260519-37e5eb6a-1623-4666-bb70-d9be3a25fb1c.png)

### Modulo 0


### Modulo 1


### Modulo 2
(diagrama)
El módulo bin2hex tiene dos puertos: una entrada bin de 14 bits que representa el número binario que se desea convertir, y una salida hex_disp de 4 bits que contiene la representación hexadecimal del número de entrada.

Dentro del módulo, hay dos bloques funcionales principales. El primer bloque es la estructura case, que toma la entrada binaria de 14 bits y la convierte en una salida hexadecimal de 4 bits. El segundo bloque es un registro de salida llamado hex_disp, que contiene la salida hexadecimal de 4 bits del bloque case.

En general, el módulo bin2hex es bastante simple, ya que solo realiza una conversión simple de binario a hexadecimal. Sin embargo, el diagrama de bloques muestra cómo se divide la funcionalidad del módulo en dos bloques funcionales separados, lo que ayuda a mantener el código organizado y fácil de entender.

### Modulo 3

![image](https://user-images.githubusercontent.com/111261878/236115812-b38112c5-72c8-4ae1-87f9-fa2c83fe8f5f.png)
  
  Descripción:
-num_binario: el bit más significativo (MSB) del número binario de entrada de 14 bits.
-num_extendido a hexadecimal: el número binario de entrada extendido a 16 bits, con el bit más significativo duplicado para extender el signo.
-complemento_dos: el complemento a dos del número extendido.
-7_segmentos_hex: la tabla de conversión hexadecimal a 7 segmentos.
-siete_segmentos: los cuatro dígitos del display de 7 segmentos que muestran el número hexadecimal de 16 bits con signo.





## Evaluación

![image](https://user-images.githubusercontent.com/111261878/236116178-56a46d14-71ec-43db-bd0e-b0289e69da5c.png)

