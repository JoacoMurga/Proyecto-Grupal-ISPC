perro = [14, "Fido", "12/12/2012", "Macho", 23546987]
new_perro= []
for element in perro:
    new_perro.insert(0, element)

for element in new_perro:
    print(element)
