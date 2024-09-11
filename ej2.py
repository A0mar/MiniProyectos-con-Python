#!/usr/bin/env python3
#-*- coding: utf-8 -*-
import datetime
destinos = {
    "Toledo":[4,9,0.1],
    "Leon":[45,13,0.15],
    "Burgos":[32,17,0.25],
    "Lugo":[16,25,0.18],
    "Segovia":[28,12,0.15],
    "Soria":[20,15,0.2]
}
class Viaje():
    def __init__(self, nombreDestino = "", tipoBillete = 0, nBilletes = 0, Descuento = 0):
        self.nombreDestino = nombreDestino
        self.tipoBillete = tipoBillete
        self.nBilletes = nBilletes
        self.Descuento = Descuento

    def verTarifas(self):
        print("DESTINO \t PLAZAS \t PRECIO \t DESCUENTO") 
        print("==========================================================")
        for claves,valor in destinos.items():
            plaza = valor[0]
            precio = valor[1]
            descuento = valor[2]
            if plaza == 0:
                print(claves + " no disponible")
            else:
                print(claves + "\t \t" + str(plaza) + "\t \t" + str(precio) + "\t \t" + str(descuento))
        opcion = input("Pulse Enter para continuar: ")
        
    def comprarBilletes(self):
        self.nombreDestino = input("Indique destino: ")
        nom = destinos[self.nombreDestino] #Accedo al nombre del destino
        if nom[0] <= 0 : #Verifico que haya o no asiento disponibles
             print("No hay plazas disponibles")
             exit()
        self.tipoBillete = int(input("¿Sencillo (1) o Ida y vuelta(2)?: "))
        self.nBilletes = int(input("Número de billetes: "))
        print("DESTINO: ", self.nombreDestino)
        print("PRECIO/billete: ",nom[1], "€")
        if self.tipoBillete == 1:
            print("DESCUENTO: NO APLICADO")
            operacion = self.nBilletes * nom[1]
            #Resto los asientos
            RestarAsiento = nom[0] - self.nBilletes 
            #Modifico el diccionario con los asientos restantes               
            destinos[self.nombreDestino][0] = RestarAsiento
            print("TOTAL: " + str(operacion) + "€")
             
        elif self.tipoBillete == 2:
                total = self.nBilletes * nom[1]
                descontar = total * nom[2]
                precioFinal = total - descontar 
                RestarAsiento = nom[0] - self.nBilletes 
                #Modifico el diccionario con los asientos restantes               
                destinos[self.nombreDestino][0] = RestarAsiento
                print("DESCUENTO: ", nom[2])
                print("TOTAL: ", precioFinal , "€")
                
        tiempo = datetime.datetime.now()
        fh = tiempo.strftime(("%m/%d/%Y %H:%M:%S"))
        fichero = open("registro.txt","a")
        registro = self.nombreDestino + "#" + str(self.nBilletes) + "#" + str(self.tipoBillete) + "#" + fh + "\n"
        fichero.write(registro)
        fichero.close()
        
billete = Viaje()
op = 0
while op != 3:
    print("Menú billetes")
    print("1. Ver tarifas")
    print("2. Comprar billetes")
    print("3. Salir")
    op = int(input("Indique opción: "))
    if op == 1:
        billete.verTarifas()
    elif op == 2:
        billete.comprarBilletes()
    elif op == 3:
        pass 