matrix = [[1.1, 2.4], [3.6, 5.9]]

suma=0
elementos=0

for fila in matrix:
  for column in fila:
    suma += column 
    elementos += 1

print(suma / elementos)

