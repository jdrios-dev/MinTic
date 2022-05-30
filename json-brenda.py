import json
# key:value"
laminas = '{"a": 23, "v": 90}'
quiero_comprar = 'a b c v'

#javascript object notation JSON
data_json = json.loads(laminas)

if 'age' in data_json:
  print('SI EXISTO')
else:
  print('NO EXISTO')
