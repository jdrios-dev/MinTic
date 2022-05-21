#chars = input().upper().split(',')
# 4 2 2 1 1 2 2 1 1 1 2 1 # [422112211121] # 4 2 2 1 1
# E D E D F G T I H E L O # [EDEDFGTIHELO] # E D E D F
chars ='E,E,e,E,D,D,E,E,d,F,G,G,t,T,i,H,e,L,l,O'.upper().split(',')
lastChar: str = chars[0]
result = [[0], lastChar]

def checkLastChar(char):
  if char == result[1][-1]:
    result[0][-1] += 1
  else:
    result[1] += char
    result[0].append(1)

for letra in chars:
  checkLastChar(letra)

def formater(array):
  result = ''
  for item in array:
    result = result + str(item) + ' '
  return result

print(result[1])
print(result[0])

print(formater(result[1]))
print(formater(result[0]))
