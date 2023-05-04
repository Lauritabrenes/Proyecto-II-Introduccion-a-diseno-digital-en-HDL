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


#### Imagen de la distribución de pines del display de 7 segmentos
![image](https://user-images.githubusercontent.com/111375712/194989472-a5276744-b65a-47e5-b6a7-da2e06bcdfcc.png)



## Pruebas

### Run Implementation Vivado
![Captura de pantalla (171)](https://user-images.githubusercontent.com/111261878/236121396-27d5e041-e22d-46f1-bdf5-0a958ac9a137.png)


#### Testbench Modulo 0
![image (6)](https://user-images.githubusercontent.com/111261878/236120855-d30c70fb-9302-49e6-8e46-0656048d07a3.png)








## Diagramas

#### Diagrama general
![image](https://user-images.githubusercontent.com/111307104/233260519-37e5eb6a-1623-4666-bb70-d9be3a25fb1c.png)

#### Modulo 0

![image](https://user-images.githubusercontent.com/111261878/236119543-5841d66c-0184-4185-9078-55ad57aaa392.png)


En este diagrama, la entrada de 13 bits se extiende a 16 bits mediante el registro de 16 bits. Este número binario se envía al bloque de conversión de BCD, que realiza las operaciones de división y módulo para calcular los dígitos de millares (thou), centenas (hund), decenas (tens) y unidades (ones) en formato BCD, asi como los divisores (1000, 100, 10 y 1) se utilizan para determinar la posición de cada dígito. Los dígitos de miles, centenas, decenas y unidades se envían a las salidas thou, hund, tens y ones respectivamente, cada una de 4 bits de ancho.

#### Modulo 1

![image](https://user-images.githubusercontent.com/111261878/236118147-b543844f-5566-474f-8f2c-e68ed1a6ee31.png)

El módulo bin_to_bcd_dd convierte cada uno de los números binarios de 6 bits en BCD mediante el algoritmo Double Dabble, y luego los multiplexa en un único bus de 14 bits. Este bus se conecta a la entrada del módulo bcd_to_sseg_cc, que convierte cada par de dígitos BCD en su correspondiente visualización de 7 segmentos, a través de un multiplexor 2x8 que selecciona entre dos displays de 7 segmentos. La salida de cada display de 7 segmentos se envía a través de un puerto de salida diferente.


#### Modulo 2

![image](https://user-images.githubusercontent.com/111261878/236118218-b70148aa-9fe7-4118-954b-db5b847761ab.png)

El módulo bin2hex tiene dos puertos: una entrada bin de 14 bits que representa el número binario que se desea convertir, y una salida hex_disp de 4 bits que contiene la representación hexadecimal del número de entrada.

Dentro del módulo, hay dos bloques funcionales principales. El primer bloque es la estructura case, que toma la entrada binaria de 14 bits y la convierte en una salida hexadecimal de 4 bits. El segundo bloque es un registro de salida llamado hex_disp, que contiene la salida hexadecimal de 4 bits del bloque case.

En general, el módulo bin2hex es bastante simple, ya que solo realiza una conversión simple de binario a hexadecimal. Sin embargo, el diagrama de bloques muestra cómo se divide la funcionalidad del módulo en dos bloques funcionales separados, lo que ayuda a mantener el código organizado y fácil de entender.

#### Modulo 3

![image](https://user-images.githubusercontent.com/111261878/236115812-b38112c5-72c8-4ae1-87f9-fa2c83fe8f5f.png)
  
-Descripción:

.Número binario: el bit más significativo (MSB) del número binario de entrada de 14 bits.

.Número extendido a hexadecimal: el número binario de entrada extendido a 16 bits, con el bit más significativo duplicado para extender el signo.

.Complemento a dos: el complemento a dos del número extendido.

.7 segmentos hex: la tabla de conversión hexadecimal a 7 segmentos.

.Siete segmentos: los cuatro dígitos del display de 7 segmentos que muestran el número hexadecimal de 16 bits con signo.





## Evaluación

![image](https://user-images.githubusercontent.com/111261878/236116178-56a46d14-71ec-43db-bd0e-b0289e69da5c.png)

