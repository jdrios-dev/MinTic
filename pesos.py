spiderman = int(input())
hulk = int((spiderman * 2) + 4)
thanos = int((spiderman + hulk ) / 5)

def rangoPeso (peso):
  etapa = ''
  if(0 < peso & peso < 20):
    etapa = 'uno'
  if(21 <= peso & peso <= 40):
    etapa = 'dos'
  if(41 <= peso & peso <= 80):
    etapa = 'tres'
  if(81 <= peso):
    etapa = 'cuatro'
  return etapa
  
print(f'Hola {spiderman} {hulk} {thanos} more text')
print(rangoPeso(spiderman))