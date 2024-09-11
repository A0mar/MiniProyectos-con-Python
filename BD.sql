CREATE DATABASE academia;
USE academia;

CREATE TABLE temas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE preguntas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pregunta  VARCHAR(255) NOT NULL,
    tema_id INT,
    FOREIGN KEY (tema_id) REFERENCES temas(id)
);

CREATE TABLE respuestas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    respuesta VARCHAR(255) NOT NULL,
    es_correcta CHAR(2) NOT NULL,
    pregunta_id INT,
    FOREIGN KEY (pregunta_id) REFERENCES preguntas(id)
);

INSERT INTO temas (nombre) VALUES ("HARDWARE");
INSERT INTO temas (nombre) VALUES ("SO");
INSERT INTO temas (nombre) VALUES ("REDES");
INSERT INTO temas (nombre) VALUES ("WEB");

-- HARDWARE (preguntas)
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Cuál es la función principal de la CPU en una computadora?', 1);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Cuál es la diferencia entre una tarjeta gráfica integrada y una dedicada?', 1);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué significa SSD y cuáles son sus ventajas sobre un disco duro tradicional?', 1);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es el overclocking y cuáles son sus posibles riesgos?', 1);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Cuál es la importancia de la RAM en un sistema informático y cómo afecta al rendimiento?', 1);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Cuál es la diferencia entre un procesador de arquitectura de 32 bits y uno de 64 bits?', 1);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es una placa base y cuál es su función en una computadora?', 1);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Cuál es la diferencia entre un puerto USB 2.0 y 3.0?', 1);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué factores deben considerarse al elegir una fuente de alimentación para una PC?', 1);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Cuál es la función de la tarjeta de sonido en un PC y cuándo es necesario utilizar una tarjeta de sonido externa?', 1);

-- SISTEMAS OPERATIVOS (preguntas)
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es un sistema operativo y cuál es su función principal?', 2);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Cuál es la diferencia entre un sistema operativo de 32 bits y uno de 64 bits?', 2);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es la multitarea en un sistema operativo?', 2);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Cuál es la diferencia entre un sistema operativo de código abierto y uno de código cerrado?', 2);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es un sistema de archivos y cuál es su función en un sistema operativo?', 2);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es un proceso en el contexto de un sistema operativo?', 2);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es la virtualización y cómo se utiliza en los sistemas operativos?', 2);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Cuál es la importancia de los controladores (drivers) en un sistema operativo?', 2);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es un sistema de archivos NTFS y cuáles son sus características principales?', 2);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es el administrador de tareas y para qué se utiliza en un sistema operativo Windows?', 2);

-- REDES (preguntas)
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es una dirección IP y cuál es su función en una red?', 3);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué diferencia hay entre una dirección IP pública y una privada?', 3);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es el protocolo TCP/IP y por qué es importante en redes de computadoras?', 3);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué función cumple el DNS en Internet?', 3);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es un router y cuál es su función en una red de computadoras?', 3);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es un firewall y cómo contribuye a la seguridad de una red?', 3);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es un switch y cuál es su función en una red local?', 3);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es un servidor y cuál es su papel en una red de computadoras?', 3);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es el DHCP y cuál es su función en una red de computadoras?', 3);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es el NAT y por qué se utiliza en redes de computadoras?', 3);

-- WEB (preguntas)
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es HTML y cuál es su función principal en la web?', 4);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué significa CSS y cuál es su función en el desarrollo web?', 4);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es JavaScript y cuál es su papel en el desarrollo web?', 4);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es una URL y cuál es su función en la web?', 4);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es HTTP y cuál es su papel en la comunicación web?', 4);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es un servidor Web?', 4);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es un navegador web y cuál es su función en la web?', 4);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué son las cookies y cuál es su función en la web?', 4);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es el responsive design y por qué es importante en el desarrollo web?', 4);
INSERT INTO preguntas (pregunta, tema_id) VALUES ('¿Qué es el SEO y por qué es importante en la web?', 4);

-- HARDWARE (respuestas)
-- Pregunta 1: ¿Cuál es la función principal de la CPU en una computadora?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Procesar instrucciones y datos para ejecutar programas y realizar cálculos.', 'SI', 1);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Administrar la energía de la computadora.', 'NO', 1);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Controlar la temperatura del sistema.', 'NO', 1);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Conectar la computadora a internet.', 'NO', 1);

-- Pregunta 2: ¿Cuál es la diferencia entre una tarjeta gráfica integrada y una dedicada?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una dedicada tiene su propia memoria y procesador, ofreciendo mejor rendimiento gráfico.', 'SI', 2);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Ambas usan la memoria RAM del sistema por igual.', 'NO', 2);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Las integradas son más caras que las dedicadas.', 'NO', 2);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Las integradas son más eficientes energéticamente.', 'NO', 2);

-- Pregunta 3: ¿Qué significa SSD y cuáles son sus ventajas sobre un disco duro tradicional?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('SSD significa Solid State Drive. Sus ventajas incluyen mayor velocidad de lectura/escritura y menor consumo de energía.', 'SI', 3);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('SSD significa Super STATUS Drive. Sus ventajas incluyen mayor capacidad de almacenamiento y durabilidad.', 'NO', 3);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('SSD significa Simple Simple Dispositivo. Sus ventajas incluyen mejor compatibilidad con hardware antiguo.', 'NO', 3);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('SSD significa Secure Storage Drive. Sus ventajas incluyen mejor protección contra virus y malware.', 'NO', 3);

-- Pregunta 4: ¿Qué es el overclocking y cuáles son sus posibles riesgos?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El overclocking es aumentar la velocidad de reloj de un componente para mejorar el rendimiento, pero puede causar inestabilidad y reducir la vida útil.', 'SI', 4);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El overclocking es reducir la velocidad de reloj de un componente para mejorar la estabilidad y la durabilidad.', 'NO', 4);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El overclocking solo se aplica a la memoria RAM.', 'NO', 4);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El overclocking siempre mejora el rendimiento sin riesgos.', 'NO', 4);

-- Pregunta 5: ¿Cuál es la importancia de la RAM en un sistema informático y cómo afecta al rendimiento?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La RAM almacena datos temporales que la CPU necesita acceder rápidamente, afectando directamente la velocidad y capacidad multitarea de la computadora.', 'SI', 5);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La RAM solo afecta al rendimiento si se usa en computadoras portátiles.', 'NO', 5);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La RAM afecta principalmente a la duración de la batería.', 'NO', 5);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La RAM solo es relevante para aplicaciones de edición de video.', 'NO', 5);

-- Pregunta 6: ¿Cuál es la diferencia entre un procesador de arquitectura de 32 bits y uno de 64 bits?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un procesador de 64 bits puede manejar más datos a la vez y es compatible con sistemas operativos y programas de 64 bits.', 'SI', 6);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un procesador de 32 bits siempre es más rápido que uno de 64 bits.', 'NO', 6);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Ambos tipos de procesadores tienen la misma capacidad de manejar datos.', 'NO', 6);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un procesador de 64 bits solo es útil para juegos.', 'NO', 6);

-- Pregunta 7: ¿Qué es una placa base y cuál es su función en una computadora?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La placa base es el circuito principal que conecta todos los componentes de hardware de una computadora y permite la comunicación entre ellos.', 'SI', 7);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La placa base es solo un soporte físico para los componentes de la computadora.', 'NO', 7);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La placa base solo controla la energía suministrada a la CPU.', 'NO', 7);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La placa base solo afecta la velocidad de conexión a internet.', 'NO', 7);

-- Pregunta 8: ¿Cuál es la diferencia entre un puerto USB 2.0 y 3.0?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('USB 3.0 ofrece velocidades de transferencia mucho más rápidas y es retrocompatible con USB 2.0, pero tiene contactos adicionales y es ligeramente más grande.', 'SI', 8);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('USB 2.0 es más rápido que USB 3.0 pero menos compatible.', 'NO', 8);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('USB 2.0 y 3.0 tienen la misma velocidad de transferencia y compatibilidad.', 'NO', 8);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('USB 3.0 solo se utiliza para la conexión de dispositivos de red.', 'NO', 8);

-- Pregunta 9: ¿Qué factores deben considerarse al elegir una fuente de alimentación para una PC?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Factores como la potencia total, eficiencia energética, certificaciones de seguridad y cantidad y tipo de conectores necesarios para los componentes.', 'SI', 9);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Solo la marca de la fuente de alimentación es importante para garantizar la calidad.', 'NO', 9);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Solo la longitud de los cables de la fuente de alimentación es importante para una instalación limpia.', 'NO', 9);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Solo la estética de la fuente de alimentación debe ser considerada.', 'NO', 9);

-- Pregunta 10: ¿Cuál es la función de la tarjeta de sonido en un PC y cuándo es necesario utilizar una tarjeta de sonido externa?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La tarjeta de sonido convierte señales digitales en analógicas para la salida de audio y puede ser necesaria para obtener mejor calidad de audio en sistemas de alta fidelidad.', 'SI', 10);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La tarjeta de sonido solo se usa para mejorar la calidad del micrófono en una PC.', 'NO', 10);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La tarjeta de sonido solo es necesaria para la reproducción de video en una PC.', 'NO', 10);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La tarjeta de sonido no tiene ninguna función adicional en una PC moderna.', 'NO', 10);


-- RESPUESTAS S.O (respuestas)
-- Pregunta 1: ¿Qué es un sistema operativo y cuál es su función principal?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema operativo es un software que gestiona los recursos de hardware y proporciona servicios a los programas de aplicación.', 'SI', 11);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema operativo es un tipo de hardware utilizado en las computadoras.', 'NO', 11);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema operativo es un dispositivo utilizado para realizar cálculos matemáticos complejos.', 'NO', 11);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema operativo es un componente físico de una computadora.', 'NO', 11);

-- Pregunta 2: ¿Cuál es la diferencia entre un sistema operativo de 32 bits y uno de 64 bits?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La principal diferencia es que un sistema de 64 bits puede manejar una mayor cantidad de memoria RAM y ejecutar aplicaciones de 64 bits.', 'SI', 12);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema operativo de 312 bits es siempre más rápido que uno de 64 bits.', 'NO', 12);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema operativo de 64 bits solo es compatible con procesadores de 64 bits.', 'NO', 12);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La diferencia está en el número de núcleos que pueden ser utilizados por el sistema operativo.', 'NO', 12);

-- Pregunta 3: ¿Qué es la multitarea en un sistema operativo?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La multitarea es la capacidad de un sistema operativo para ejecutar varios programas simultáneamente, compartiendo los recursos del sistema entre ellos.', 'SI', 13);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La multitarea se refiere a la capacidad de un sistema operativo para ejecutar un solo programa a la vez.', 'NO', 13);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La multitarea es la capacidad de un sistema operativo para cambiar entre diferentes usuarios.', 'NO', 13);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La multitarea es la capacidad de un sistema operativo para realizar varias tareas de entrada y salida simultáneamente.', 'NO', 13);

-- Pregunta 4: ¿Cuál es la diferencia entre un sistema operativo de código abierto y uno de código cerrado?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema operativo de código abierto permite a cualquier persona ver, modificar y distribuir su código fuente, mientras que uno de código cerrado no.', 'SI', 14);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema operativo de código abierto siempre es gratuito, mientras que uno de código cerrado siempre es de pago.', 'NO', 14);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema operativo de código abierto es menos seguro que uno de código cerrado.', 'NO', 14);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema operativo de código abierto es exclusivo para uso comercial, mientras que uno de código cerrado puede ser utilizado por cualquier persona.', 'NO', 14);

-- Pregunta 5: ¿Qué es un sistema de archivos y cuál es su función en un sistema operativo?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema de archivos organiza y almacena datos en un disco duro u otro medio de almacenamiento, permitiendo a los usuarios acceder y gestionar archivos de manera eficiente.', 'SI', 15);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema de archivos es un componente del hardware que se encarga de la administración del sistema operativo.', 'NO', 15);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema de archivos es una interfaz gráfica que permite a los usuarios interactuar con el sistema operativo.', 'NO', 15);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un sistema de archivos es un programa que permite a los usuarios editar documentos de texto.', 'NO', 15);


-- Pregunta 6: ¿Qué es un proceso en el contexto de un sistema operativo?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un proceso es un programa en ejecución, incluyendo el código ejecutable, datos y recursos del sistema asignados.', 'SI', 16);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un proceso es una secuencia de comandos escritos por el usuario para automatizar tareas.', 'NO', 16);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un proceso es una parte física del sistema operativo encargada de gestionar la memoria RAM.', 'NO', 16);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un proceso es un dispositivo de entrada que permite a los usuarios interactuar con el sistema operativo.', 'NO', 16);
-- Pregunta 7: ¿Qué es la virtualización y cómo se utiliza en los sistemas operativos?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La virtualización es la creación de ambientes de computación virtual que simulan hardware y/o sistemas operativos, permitiendo la ejecución de múltiples sistemas operativos en un mismo hardware físico.', 'SI', 17);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La virtualización es la capacidad de un sistema operativo para manejar múltiples usuarios simultáneamente.', 'NO', 17);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La virtualización es la gestión de archivos virtuales en un sistema operativo.', 'NO', 17);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('La virtualización es la creación de redes virtuales para interconectar diferentes dispositivos.', 'NO', 17);

-- Pregunta 8: ¿Cuál es la importancia de los controladores (drivers) en un sistema operativo?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Los controladores permiten al sistema operativo comunicarse con hardware específico, asegurando que los dispositivos funcionen correctamente y sean reconocidos por el sistema.', 'SI', 18);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Los controladores son programas de seguridad que protegen el sistema operativo contra amenazas de malware.', 'NO', 18);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Los controladores son responsables de administrar la memoria RAM en un sistema operativo.', 'NO', 18);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Los controladores son componentes físicos del sistema operativo que permiten la conexión a internet.', 'NO', 18);
-- Pregunta 9: ¿Qué es un sistema de archivos NTFS y cuáles son sus características principales?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('NTFS (New Technology File System) es un sistema de archivos desarrollado por Microsoft que ofrece características avanzadas como control de acceso, compresión de archivos, cifrado y recuperación de datos.', 'SI', 19);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('NTFS es un sistema de archivos diseñado para sistemas operativos de código abierto.', 'NO', 19);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('NTFS es un sistema de archivos diseñado específicamente para sistemas operativos móviles.', 'NO', 19);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('NTFS es un sistema de archivos que solo puede ser utilizado en computadoras Apple.', 'NO', 19);

-- Pregunta 10: ¿Qué es el administrador de tareas y para qué se utiliza en un sistema operativo Windows?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El administrador de tareas es una herramienta en Windows que permite a los usuarios ver información detallada sobre los procesos en ejecución, el rendimiento del sistema y controlar aplicaciones y procesos.', 'SI', 20);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El administrador de tareas es una herramienta que solo puede ser utilizada por administradores de sistemas.', 'NO', 20);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El administrador de tareas es una función que controla automáticamente las actualizaciones del sistema operativo.', 'NO', 20);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El administrador de tareas es una aplicación para desinstalar programas en Windows.', 'NO', 20);





-- Respuestas Redes
-- Pregunta 1: ¿Qué es una dirección IP y cuál es su función en una red?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una dirección IP es un identificador numérico asignado a cada dispositivo en una red para permitir su identificación y comunicación con otros dispositivos.', 'SI', 21);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una dirección IP es un protocolo de enrutamiento utilizado para transferir datos entre redes diferentes.', 'NO', 21);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una dirección IP es una técnica de cifrado utilizada para proteger la privacidad de los datos en una red.', 'NO', 21);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una dirección IP es un protocolo de seguridad utilizado para prevenir accesos no autorizados a una red.', 'NO', 21);

-- Pregunta 2: ¿Qué diferencia hay entre una dirección IP pública y una privada?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una dirección IP pública es asignada por el proveedor de servicios de Internet y es accesible desde Internet, mientras que una dirección IP privada se utiliza dentro de una red local y no es accesible desde Internet.', 'SI', 22);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una dirección IP pública es más segura que una dirección IP privada.', 'NO', 22);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una dirección IP pública es estática, mientras que una dirección IP privada es dinámica.', 'NO', 22);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una dirección IP pública es exclusiva para dispositivos móviles, mientras que una dirección IP privada es para computadoras de escritorio.', 'NO', 22);
-- Pregunta 3: ¿Qué es el protocolo TCP/IP y por qué es importante en redes de computadoras?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El protocolo TCP/IP es un conjunto de reglas utilizado para la transmisión de datos en redes de computadoras, garantizando la entrega de los datos de manera fiable y ordenada.', 'SI', 23);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El protocolo TCP/IP es una tecnología de cifrado utilizada para proteger la privacidad de los datos en redes de computadoras.', 'NO', 23);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El protocolo TCP/IP es un estándar de conexión inalámbrica utilizado en redes de computadoras.', 'NO', 23);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El protocolo TCP/IP es un sistema de identificación de dispositivos en redes de computadoras.', 'NO', 23);

-- Pregunta 4: ¿Qué función cumple el DNS en Internet?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El DNS (Sistema de Nombres de Dominio) traduce los nombres de dominio legibles por humanos en direcciones IP numéricas, permitiendo a los usuarios acceder a sitios web utilizando nombres de dominio.', 'SI', 24);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El DNS es un protocolo de seguridad utilizado para proteger la privacidad de los datos en Internet.', 'NO', 24);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El DNS es un estándar de conexión utilizado en redes locales.', 'NO', 24);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El DNS es una técnica de compresión utilizada para reducir el tamaño de los archivos de datos en Internet.', 'NO', 24);


-- Pregunta 5: ¿Qué es un router y cuál es su función en una red de computadoras?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un router es un dispositivo de red que dirige el tráfico de datos entre redes diferentes, determinando la ruta más eficiente para la transmisión de datos.', 'SI', 25);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un router es un tipo de cable utilizado para conectar computadoras en una red local.', 'NO', 25);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un router es un programa de seguridad utilizado para proteger una red de computadoras contra accesos no autorizados.', 'NO', 25);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un router es un protocolo de comunicación utilizado para transferir archivos entre dispositivos en una red de computadoras.', 'NO', 25);

-- Pregunta 6: ¿Qué es un firewall y cómo contribuye a la seguridad de una red?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un firewall es un sistema de seguridad que controla y filtra el tráfico de red según un conjunto de reglas predefinidas, protegiendo la red contra amenazas externas e internas.', 'SI', 26);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un firewall es un protocolo de encriptación utilizado para proteger la privacidad de los datos en una red.', 'NO', 26);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un firewall es un dispositivo utilizado para interconectar redes de computadoras.', 'NO', 26);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un firewall es un estándar de conexión utilizado en redes inalámbricas.', 'NO', 26);

-- Pregunta 7: ¿Qué es un switch y cuál es su función en una red local?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un switch es un dispositivo de red que conecta múltiples dispositivos en una red local, dirigiendo el tráfico de datos únicamente a los dispositivos de destino, mejorando la eficiencia de la red.', 'SI', 27);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un switch es un programa de seguridad utilizado para proteger una red local contra accesos no autorizados.', 'NO', 27);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un switch es un protocolo de enrutamiento utilizado para transferir datos entre redes diferentes.', 'NO', 27);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un switch es un dispositivo utilizado para conectar redes de computadoras remotas.', 'NO', 27);

-- Pregunta 8: ¿Qué es un servidor y cuál es su papel en una red de computadoras?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un switch es un dispositivo de red que conecta múltiples dispositivos en una red local, dirigiendo el tráfico de datos únicamente a los dispositivos de destino, mejorando la eficiencia de la red.', 'SI', 28);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un switch es un programa de seguridad utilizado para proteger una red local contra accesos no autorizados.', 'NO', 28);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un switch es un protocolo de enrutamiento utilizado para transferir datos entre redes diferentes.', 'NO', 28);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un switch es un dispositivo utilizado para conectar redes de computadoras remotas.', 'NO', 28);


-- Pregunta 9: ¿Qué es el DHCP y cuál es su función en una red de computadoras?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El DHCP (Protocolo de Configuración Dinámica de Host) es un protocolo de red utilizado para asignar direcciones IP de manera dinámica a dispositivos en una red, simplificando la administración de direcciones IP.', 'SI', 29);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El DHCP es un dispositivo de red utilizado para conectar múltiples dispositivos en una red local.', 'NO', 29);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El DHCP es un sistema de seguridad utilizado para proteger una red de computadoras contra accesos no autorizados.', 'NO', 29);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El DHCP es un protocolo de enrutamiento utilizado para transferir datos entre redes diferentes.', 'NO', 29);

-- Pregunta 10: ¿Qué es el NAT y por qué se utiliza en redes de computadoras?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('NAT (Traducción de Direcciones de Red) es un método utilizado para modificar las direcciones IP de los dispositivos en una red privada, permitiendo que múltiples dispositivos compartan una única dirección IP pública, facilitando así la conexión a Internet.', 'SI', 30);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El NAT es un protocolo de encriptación utilizado para proteger la privacidad de los datos en una red de computadoras.', 'NO', 30);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El NAT es un dispositivo de red utilizado para interconectar redes de computadoras remotas.', 'NO', 30);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El NAT es un sistema de seguridad utilizado para proteger una red de computadoras contra accesos no autorizados.', 'NO', 30);




-- Respuestas WEB
-- Pregunta 1: ¿Qué es HTML y cuál es su función principal en la web?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('HTML (HyperText Markup Language) es un lenguaje de marcado utilizado para crear y estructurar páginas web, permitiendo definir la estructura y el contenido de una página web.', 'SI', 31);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('HTML es un lenguaje de programación utilizado para desarrollar aplicaciones web interactivas.', 'NO', 31);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('HTML es un protocolo de enrutamiento utilizado para transferir datos entre servidores y clientes en la web.', 'NO', 31);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('HTML es un sistema de gestión de bases de datos utilizado para almacenar información en la web.', 'NO', 31);

-- Pregunta 2: ¿Qué significa CSS y cuál es su función en el desarrollo web?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('CSS (Cascading Style Sheets) es un lenguaje utilizado para definir el estilo y la presentación de páginas web, permitiendo controlar aspectos como el diseño, los colores y las fuentes.', 'SI', 32);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('CSS es un protocolo de seguridad utilizado para proteger sitios web contra ataques cibernéticos.', 'NO', 32);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('CSS es un estándar de conexión utilizado para establecer comunicación entre servidores y clientes en la web.', 'NO', 32);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('CSS es un sistema de compresión utilizado para reducir el tamaño de los archivos de datos en la web.', 'NO', 32);

-- Pregunta 3: ¿Qué es JavaScript y cuál es su papel en el desarrollo web?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('JavaScript es un lenguaje de programación utilizado para agregar interactividad y dinamismo a las páginas web, permitiendo realizar acciones como validar formularios, animar elementos y gestionar eventos.', 'SI', 33);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('JavaScript es un formato de archivo utilizado para almacenar imágenes en páginas web.', 'NO', 33);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('JavaScript es un protocolo de enrutamiento utilizado para transferir datos entre servidores y clientes en la web.', 'NO', 33);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('JavaScript es un sistema de gestión de contenido utilizado para crear y administrar sitios web.', 'NO', 33);

-- Pregunta 4: ¿Qué es una URL y cuál es su función en la web?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una URL (Uniform Resource Locator) es una dirección web que especifica la ubicación única de un recurso en Internet, como una página web, un archivo o un servicio.', 'SI', 34);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una URL es un formato de archivo utilizado para almacenar imágenes en páginas web.', 'NO', 34);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una URL es un protocolo de enrutamiento utilizado para transferir datos entre servidores y clientes en la web.', 'NO', 34);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Una URL es una técnica de compresión utilizada para reducir el tamaño de los archivos de datos en la web.', 'NO', 34);

-- Pregunta 5: ¿Qué es HTTP y cuál es su papel en la comunicación web?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('HTTP (Protocolo de Transferencia de Hipertexto) es un protocolo de comunicación utilizado para transferir datos entre un servidor web y un navegador web, permitiendo la solicitud y entrega de recursos como páginas web, imágenes y archivos.', 'SI', 35);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('HTTP es un lenguaje de programación utilizado para desarrollar aplicaciones web interactivas.', 'NO', 35);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('HTTP es un formato de archivo utilizado para almacenar imágenes en páginas web.', 'NO', 35);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('HTTP es un sistema de gestión de contenido utilizado para crear y administrar sitios web.', 'NO', 35);

-- Pregunta 6: ¿Qué es un servidor web y cuál es su función en la web?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un servidor web es un software que aloja y entrega contenido web, como páginas HTML, imágenes y archivos, a los usuarios que acceden a través de un navegador web.', 'SI', 36);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un servidor web es un dispositivo físico utilizado para almacenar y administrar archivos de un sitio web.', 'NO', 36);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un servidor web es un lenguaje de programación utilizado para desarrollar aplicaciones web interactivas.', 'NO', 36);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un servidor web es un protocolo de seguridad utilizado para proteger un sitio web contra ataques cibernéticos.', 'NO', 36);
-- Pregunta 7: ¿Qué es un navegador web y cuál es su función en la web?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un navegador web es una aplicación que permite a los usuarios acceder y visualizar contenido web, como páginas HTML, imágenes y archivos, así como interactuar con ellos.', 'SI', 37);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un navegador web es un protocolo de comunicación utilizado para transferir datos entre un servidor web y un navegador web.', 'NO', 37);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un navegador web es un lenguaje de programación utilizado para desarrollar aplicaciones web interactivas.', 'NO', 37);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Un navegador web es un sistema de gestión de contenido utilizado para crear y administrar sitios web.', 'NO', 37);

-- Pregunta 8: ¿Qué son las cookies y cuál es su función en la web?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Las cookies son pequeños archivos de texto que se almacenan en el dispositivo del usuario y contienen información sobre la interacción del usuario con un sitio web, permitiendo personalizar la experiencia del usuario y recordar sus preferencias.', 'SI', 38);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Las cookies son un protocolo de seguridad utilizado para proteger un sitio web contra ataques cibernéticos.', 'NO', 38);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Las cookies son un formato de archivo utilizado para almacenar imágenes en páginas web.', 'NO', 38);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('Las cookies son un sistema de compresión utilizado para reducir el tamaño de los archivos de datos en la web.', 'NO', 38);

-- Pregunta 9: ¿Qué es el responsive design y por qué es importante en el desarrollo web?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El responsive design es una técnica de diseño web que permite que los sitios se adapten automáticamente al tamaño de la pantalla del dispositivo del usuario, proporcionando una experiencia de usuario óptima en dispositivos móviles y de escritorio.', 'SI', 39);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El responsive design es un protocolo de seguridad utilizado para proteger un sitio web contra ataques cibernéticos.', 'NO', 39);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El responsive design es un formato de archivo utilizado para almacenar imágenes en páginas web.', 'NO', 39);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El responsive design es un sistema de compresión utilizado para reducir el tamaño de los archivos de datos en la web.', 'NO', 39);

-- Pregunta 10: ¿Qué es el SEO y por qué es importante en la web?
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El SEO (Search Engine Optimization) es el proceso de mejorar la visibilidad y la clasificación de un sitio web en los resultados de los motores de búsqueda, lo que aumenta la cantidad y la calidad del tráfico hacia el sitio web.', 'SI', 40);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El SEO es un protocolo de seguridad utilizado para proteger un sitio web contra ataques cibernéticos.', 'NO', 40);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El SEO es un formato de archivo utilizado para almacenar imágenes en páginas web.', 'NO', 40);
INSERT INTO respuestas (respuesta, es_correcta, pregunta_id) VALUES ('El SEO es un sistema de compresión utilizado para reducir el tamaño de los archivos de datos en la web.', 'NO', 40);


