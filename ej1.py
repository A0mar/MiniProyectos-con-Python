#!/usr/bin/env python3
#-*- coding: utf-8 -*-
class Horoscopo():
    def __init__(self, fNacimiento = "", fecha = "", dia = 0, mes = 0, annio = 0):
        self.fNacimiento = fNacimiento
        self.fecha = fecha
        self.dia = dia 
        self.mes = mes
        self.annio = annio
    def pedirDatos(self):
        self.fNacimiento = input("Indica tu fecha de nacimiento en formato DD/MM/AAAA: ")
        self.fecha = self.fNacimiento.split("/")
        self.dia = int(self.fecha[0])
        self.mes = int(self.fecha[1])
        self.annio = int(self.fecha[2])
        if self.dia < 0 or self.dia > 31:
            print("El dia debe ser entre 01 y 31")
            exit()
        elif self.mes < 1 or self.mes > 12:
            print("Los meses deben ser entre 01 y 12")
            exit()
        elif self.annio < 1900 or self.annio > 2100:
            print("Se ha superado el limite de año. ¿Eres humano?")
            exit()
    def horoscopo_Occidental(self):
        if self.mes == 3 and self.dia >= 21 or self.mes == 4 and self.dia <= 20:
            print("Eres Aries")
        elif self.mes == 4 and self.dia >= 21 or self.mes == 5 and self.dia <= 20:
            print("Eres Tauro")
        elif self.mes == 5 and self.dia >= 21 or self.mes == 6 and self.dia <= 21:
            print("Eres Géminis")
        elif self.mes == 6 and self.dia >= 22 or self.mes == 7 and self.dia <= 21:
            print("Eres Cáncer")
        elif self.mes == 7 and self.dia >= 22 or self.mes == 8 and self.dia <= 23:
            print("Eres Leo")
        elif self.mes == 8 and self.dia >= 24 or self.mes == 9 and self.dia <= 23:
            print("Eres Virgo")
        elif self.mes == 9 and self.dia >= 24 or self.mes == 10 and self.dia <= 23:
            print("Eres Libra")
        elif self.mes == 10 and self.dia >= 24 or self.mes == 11 and self.dia <= 22:
            print("Eres Escorpio")
        elif self.mes == 11 and self.dia >= 23 or self.mes == 12 and self.dia <= 21:
            print("Eres Sagitario")
        elif self.mes == 12 and self.dia >= 22 or self.mes == 1 and self.dia <= 20:
            print("Eres Capricornio")
        elif self.mes == 1 and self.dia >= 21 or self.mes == 2 and self.dia <= 19:
            print("Eres Acuario")
        elif self.mes == 2 and self.dia >= 20 or self.mes == 3 and self.dia <= 20:
            print("Eres Piscis")
    def horoscopo_Chino(self):
        animales = {
            "rata":(1936,1948,1960,1972,1984,1996,2008), "buey":(1937,1949,1961,1973,1985,1997,2009), "tigre":(1938,1950,1962,1974,1986,1998,2010), "conejo":(1939,1951,1963,1975,1987,1999,2011),
            "dragon":(1940,1952,1964,1976,1988,2000,2012), "serpiente":(1941,1953,1965,1977,1989,2001,2013), "caballo":(1942, 1954, 1966, 1978, 1990, 2002, 2014),"cabra":(1943, 1955, 1967, 1979, 1991, 2003, 2015),
            "mono":(1944, 1956, 1968, 1980, 1992, 2004, 2016),"gallo":(1945, 1957, 1969, 1981, 1993, 2005, 2017),"perro":(1946, 1958, 1970, 1982, 1994, 2006, 2018),"cerdo":(1947, 1959, 1971, 1983, 1995, 2007, 2019)
        } 
        for nombre, fechaAnnio in animales.items():
            if self.annio in fechaAnnio:
                print("Tu animal del Horoscopo Chino es: " + nombre)
    def num_Magico(self):
        #Parte 1 
        lista = []
        for clave in self.fecha:
            for valor in clave:
                valor = int(valor)
                lista.append(valor)
        lista = sum(lista)
        lista = str(lista)
        #Parte 2  
        lista2 = []
        for clave2 in lista:
            clave2 = int(clave2)
            lista2.append(clave2)
        lista2 = sum(lista2)
        lista2 = str(lista2)
        #Parte 3 
        lista3 = []
        for clave3 in lista2:
            clave3 = int(clave3)
            lista3.append(clave3)
        lista3 = sum(lista3)
        print("Tú número mágico es el " + str(lista3))
                
horos = Horoscopo() #Instanciar objeto y llamar a los métodos
horos.pedirDatos()
horos.horoscopo_Occidental()
horos.horoscopo_Chino()
horos.num_Magico()
