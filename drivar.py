import json

armas_tienda_input = input()
items = input()

armas_tienda = json.loads(armas_tienda_input)
precio = 0 
armas_resultado = ''

for arma in items:
  if arma in armas_tienda:
    precio += armas_tienda[arma]
    armas_resultado += arma + " " 

print(precio)
print(armas_resultado)
