import json

armas_tienda = input();
items = input();
tienda = json.loads(armas_tienda);

items = items.split(" ");
suma = 0
letras= ''
#print(sum(tienda.values())) -> esto suma TODOS los values, debes sumar solo el de las letras

for i in items:
  for j in armas_tienda:
    if(i==j):
      suma += tienda[i]
      letras += i + ' '
      break

print(suma)
print(letras)