#!/usr/bin/env python3
#-*- coding: utf-8 -*-
#Se requiere  instalar la dependia  sql  connector
''' 
FUENTE CONSULTADAS:
https://www.tutorialesprogramacionya.com/pythonya/detalleconcepto.php?punto=81&codigo=81&inicio=75
https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.w3schools.com/python/python_mysql_getstarted.asp&ved=2ahUKEwiTmdDdntmGAxXQSPEDHRrYB3sQFnoECBcQAQ&usg=AOvVaw35nnJ6LNjilFDxr-3qPhY2
https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.youtube.com/watch%3Fv%3DRgLzqIFZg8s&ved=2ahUKEwiTmdDdntmGAxXQSPEDHRrYB3sQwqsBegQIExAG&usg=AOvVaw16_FDCFezquiNV-eiw2EqX
https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.josedomingo.org/pledin/2021/12/python3-mysql/&ved=2ahUKEwiTmdDdntmGAxXQSPEDHRrYB3sQFnoECCcQAQ&usg=AOvVaw2VLldcbict3-9hKehg5Tga
https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.guru99.com/es/python-mysql-example.html&ved=2ahUKEwiTmdDdntmGAxXQSPEDHRrYB3sQFnoECCsQAQ&usg=AOvVaw1k_3OzfdnlsZuXwZ7HkPTw
https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.w3schools.com/python/python_mysql_insert.asp&ved=2ahUKEwjf1ej1ntmGAxVoA9sEHStdCEY4FBAWegQICBAB&usg=AOvVaw0ip8PD-ljuMarmxWzklRBH
- Apuntes de la profesora
'''
import mysql.connector
import random

def hacerExamen():
    conexion1 = mysql.connector.connect(host="localhost", user="root", passwd="", database="academia")
    cursor1 = conexion1.cursor()
    # Realizo una consulta Select para mostrar los temas a examinar
    cursor1.execute("SELECT id, nombre FROM temas")
    for fila in cursor1:
        print(fila)
    opcion = int(input("Indique número del tema a examinar: "))
    # Validar si el tema está
    cursor1.execute("SELECT id FROM temas WHERE id = %s", (opcion,))  # Realizo consulta
    tema = cursor1.fetchone()  # Recuperar una fila de la consulta realizada
    if tema:
        tema_id = tema[0]

        # Obtener todas las preguntas del tema seleccionado
        cursor1.execute("SELECT id, pregunta FROM preguntas WHERE tema_id = %s", (tema_id,))
        preguntas = cursor1.fetchall()        
        # Genero preguntas aleatoriaas, hasta 10
        preguntas_seleccionadas = random.sample(preguntas, min(len(preguntas), 10))
        nota = 0
        for pregunta_id, enunciado in preguntas_seleccionadas:
                print("\nPregunta: " + enunciado)

                # Obtener respuestas para la pregunta 
                cursor1.execute("SELECT id, respuesta, es_correcta FROM respuestas WHERE pregunta_id = %s", (pregunta_id,))
                respuestas = cursor1.fetchall()

                random.shuffle(respuestas) #Generar respuesta aleatorias

                opciones = {}
                idx = 1
                for respuesta_id, texto_respuesta, es_correcta in respuestas:
                    print(idx , "." , texto_respuesta)
                    opciones[idx] = (respuesta_id, es_correcta)
                    idx += 1

                # Obtener y validar la respuesta del usuario
                respuesta_usuario = int(input("Seleccione la respuesta correcta (ingrese el número correspondiente): "))

                # Valido que la respuesta es correcta
                if respuesta_usuario in opciones.keys() and opciones[respuesta_usuario][1] == 'SI':
                    nota += 1
                    print("Respuesta correcta!\n")
                else:
                    print("Respuesta incorrecta.\n")

        print("Su nota final es: " + str(nota) + "/10")

    else:
            print("Error: El tema seleccionado no existe.")
    cursor1.close()
    conexion1.close()

def crearNuevo():
    op1 = 0
    while op1 != 3:
        print("Pulse 1 para agregar un nuevo tema o pulse 2 para agregar preguntas a un tema existente, de lo contrario pulse 3")
        op1 = int(input("Opción: "))
        if op1 == 1:
            nombreTema = input("Indique nombre del tema: ")
            conexion1 = mysql.connector.connect(host="localhost", user="root", passwd="", database="academia")
            cursor1 = conexion1.cursor()
            sql = "INSERT INTO temas(nombre) VALUES (%s)"
            datos = (nombreTema,)
            cursor1.execute(sql, datos)
            conexion1.commit()
            print(cursor1.rowcount, "Tema ingresado con éxito.")
            cursor1.close()
            conexion1.close()
        elif op1 == 2:
            contador = 0
            while contador != 2:
                print("Pulse 1 para agregar preguntas con las respuestas, de lo contrario pulse 2")
                contador = int(input("Indique opción: "))
                if contador == 1:
                    id_tema = int(input("Indique ID del tema a tratar: ")) 
                    conexion1 = mysql.connector.connect(host="localhost", user="root", passwd="", database="academia")
                    cursor1 = conexion1.cursor()
                    #Validar si el tema esta
                    cursor1.execute("SELECT id FROM temas WHERE id = %s", (id_tema,))
                    tema = cursor1.fetchone() #Recuperar una fila de la comsulta realizada
                    if tema:
                        pregunta = input("Indique pregunta: ")
                        # Realizar INSERT en la tabla preguntas
                        consultarInsert = "INSERT INTO preguntas(pregunta, tema_id) VALUES (%s, %s)"
                        datos = (pregunta, id_tema)
                        cursor1.execute(consultarInsert, datos)
                        conexion1.commit()

                        # Obtener el último ID de la pregunta insertada
                        cursor1.execute("SELECT id FROM preguntas ORDER BY id DESC LIMIT 1")
                        id_pregunta = cursor1.fetchone()[0]

                        cont = 0
                        correctas = 0
                        while cont != 4:
                            # Realizar consulta INSERT en la tabla respuestas
                            respuesta = input("Indique respuesta: ")
                            rC = input("Indique si es correcta (SI) o incorrecta (NO): ").upper() 
                            if rC == 'SI': #Valido que solo haya una respuesta correcta
                                if correctas >= 1:
                                    print("Solo puede haber una respuesta correcta")
                                correctas += 1
                            elif rC != 'NO':
                                print("Debe indicar SI para correcta o NO para incorrecta")

                            consultarInsert2 = "INSERT INTO respuestas(respuesta, es_correcta, pregunta_id) VALUES (%s, %s, %s)"
                            datos = (respuesta, rC, id_pregunta)
                            cursor1.execute(consultarInsert2, datos)
                            conexion1.commit()
                            cont += 1
                        print("Pregunta y respuestas ingresadas con éxito.")
                    else:
                        print("Error. No se ha encontrado ID del tema")
                    cursor1.close()
                    conexion1.close()

opcion = 0
while opcion != 3:
    print("Menú de la Academia")
    print("1. Hacer examen")
    print("2. Crear tema")
    print("3. Salir")
    try:
        opcion = int(input("Indique opción: "))
        if opcion == 1:
            hacerExamen()
        elif opcion == 2:
            crearNuevo()
        elif opcion == 3:
            exit()
        else:
            print("Marque una opción válida")  
    except ValueError:
        print("Error al seleccionar una opción")
