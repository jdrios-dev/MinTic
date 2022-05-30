
def tipodearma (list):
  result = []
  for item in list:
    if item not in result:
      result.append(item)
  return result 

def mefaltandeltipodearma (list1, list2, arma):
  result = []
  for item in list1:
    if list2[item] == arma:
      result.append(item)
  return result

def notengo(list1, list2):
  result = []
  for item in list1:
    if item not in list2:
      result.append(item)
  return result

def puedocambiar(list1, list2):
  l1 =  notengo(list1, list2)
  l2 = notengo(list2, list1)
  if len(l1) > len(l2):
    return len(l1)
  else:
    return len(l2)
