import json
#{"t": 66, "u": 72, "d": 90, "r": 84, "j": 36, "g": 50, "s": 94, "q": 62, "f": 35}
inventario_input = input()
inventario = json.loads(inventario_input)
#d p h u i e t q
lista_compra = input()
resultado = ''
precio = 0

for item in lista_compra: 
  if item in inventario:
    precio +=inventario[item]
    resultado += item + ' '

print(precio)
print(resultado)







