import json

armas_tienda_input = '{"t": 66, "u": 72, "d": 90, "r": 84, "j": 36, "g": 50, "s": 94, "q": 62, "f": 35}'
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
