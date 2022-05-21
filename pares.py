i = 1
pares = ''
impares = ''
while i <= 1000:
  if i % 2 == 0:
    pares = pares + ', ' + str(i)
  if i % 2 != 0:
    impares = impares +  ', ' + str(i) 
  i += 1

print(pares)
print(impares)

