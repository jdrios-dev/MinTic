teamA = input()
teamK = input()
weapons = input()

result = ''

temResultA = 0
temResultK = 0

for weapon in weapons:
  if(weapon in teamA ):
    temResultA += 1
  if(weapon in teamK ):
    temResultK += 1
  if(temResultK == temResultA):
    result = result + '='
  if(temResultA > temResultK):
    result = result + 'A'
  if(temResultA < temResultK):
    result = result + 'K'


print(result)