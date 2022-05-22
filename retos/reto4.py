import json

json_data = input()
keys=input().split(' ')

# {
#   "key":"value",
#   "name": "Juan Daniel",
#   "age": 26
# }

data = json.loads(json_data)
result = [0, '']

for key in keys:
  try:
    result[0] += data[key]
    result[1] += key + ' '
  except:
    error = 0

print(result[0])
print(result[1])