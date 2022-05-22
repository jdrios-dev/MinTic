# chars = input().upper().split(',')
chars ='E,E,e,E,D,D,E,E,d,F,G,G,t,T,i,H,e,L,l,o'.upper().split(',')
# 4 2 2 1 1 2 2 1 1 1 2
# E D E D F G T I H E L
lastChar: str = chars[0]
times : int = 0
result = ''
resultChars = ''

for char in chars:
  if char == lastChar:
    times = times + 1
  else:
    result = result + str(times) + ' '
    resultChars = resultChars + lastChar + ' '
    lastChar = char
    times = 1

if chars[-1] != chars[-2] :
  result = result + str(times)
  resultChars = resultChars + chars[-1]
else:
  print('x')


print(result)
print(resultChars)