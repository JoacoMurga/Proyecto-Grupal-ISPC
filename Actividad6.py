# Crear una tupla en Python con el nombre de “Historial2” la cual contenga los siguientes valores:
# 23500, 5960, 2300, 10200, 8900
# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Frida”. Calcular el monto total gastado a lo largo del tiempo por atención de “Frida”. Crear una función que cuente cuantos gastos fueron superiores a 5000 mostrando  el número calculado en pantalla.


Historial2 = (26500, 5960, 2300, 10200, 8900)

def gastos(Historial2):
        gastosTotales = 0
        montoTotal = 0
        gastosSuperiores = []
        for i in Historial2:
            montoTotal = montoTotal + i
            if i > 5000:
                gastosTotales += 1
                gastosSuperiores.append(i)

        return print("Se gasto en total: $",montoTotal ,  "por la atencion de Frida y " , gastosTotales , " gastos fueron superiores a 5000", "(", *gastosSuperiores ,")" )



 
gastos(Historial2)
       
    


